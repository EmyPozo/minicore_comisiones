# Core: suma las ventas de cada vendedor en el rango de fechas
# y aplica el porcentaje de la regla cuyo rango contiene ese total.
class CalculadoraComision
  Resultado = Struct.new(:vendedor, :total_ventas, :regla, :porcentaje, :comision)

  def initialize(fecha_inicio, fecha_fin)
    @inicio = fecha_inicio
    @fin = fecha_fin
  end

  def call
    reglas = Regla.order(:monto_minimo).to_a
    Vendedor.order(:nombre).map do |vendedor|
      total = vendedor.ventas.where(fecha: @inicio..@fin).sum(:monto)
      regla = reglas.find do |r|
        total >= r.monto_minimo && (r.monto_maximo.nil? || total <= r.monto_maximo)
      end
      porcentaje = regla ? regla.porcentaje : 0
      Resultado.new(vendedor, total, regla, porcentaje, (total * porcentaje / 100).round(2))
    end
  end
end
