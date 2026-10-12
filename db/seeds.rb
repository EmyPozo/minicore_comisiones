Regla.destroy_all
Venta.destroy_all
Vendedor.destroy_all

Regla.create!(nombre: "Básica",  monto_minimo: 0,     monto_maximo: 999.99,  porcentaje: 2)
Regla.create!(nombre: "Media",   monto_minimo: 1000,  monto_maximo: 4999.99, porcentaje: 5)
Regla.create!(nombre: "Alta",    monto_minimo: 5000,  monto_maximo: nil,     porcentaje: 8)

ana = Vendedor.create!(nombre: "Ana Pérez",  email: "ana@ejemplo.com")
luis = Vendedor.create!(nombre: "Luis Mora", email: "luis@ejemplo.com")

Venta.create!(vendedor: ana,  monto: 800,  fecha: Date.new(2026, 10, 1))
Venta.create!(vendedor: ana,  monto: 1500, fecha: Date.new(2026, 10, 5))
Venta.create!(vendedor: luis, monto: 400,  fecha: Date.new(2026, 10, 3))
