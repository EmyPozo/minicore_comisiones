class ComisionesController < ApplicationController
  def index
    @fecha_inicio = parsear(params[:fecha_inicio])
    @fecha_fin = parsear(params[:fecha_fin])
    return unless @fecha_inicio && @fecha_fin

    if @fecha_inicio > @fecha_fin
      @error = "La fecha de inicio no puede ser mayor que la fecha fin."
    else
      @resultados = CalculadoraComision.new(@fecha_inicio, @fecha_fin).call
    end
  end

  private

  def parsear(valor)
    Date.parse(valor) if valor.present?
  rescue ArgumentError
    nil
  end
end
