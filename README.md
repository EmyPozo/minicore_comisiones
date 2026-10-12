# Mini Core de Comisiones (Ruby on Rails, MVC)

App que filtra las ventas por rango de fechas y calcula la comisión de cada vendedor según reglas.

## Tablas
- **Vendedor**: nombre, email
- **Venta**: vendedor, monto, fecha
- **Regla**: nombre, monto_minimo, monto_maximo (vacío = sin tope), porcentaje

## Arquitectura MVC
- **Modelos** (`app/models`): Vendedor, Venta, Regla (relaciones y validaciones)
- **Vistas** (`app/views`): CRUD de cada tabla y pantalla de comisiones
- **Controladores** (`app/controllers`): CRUD + `ComisionesController`
- **Servicio** (`app/services/calculadora_comision.rb`): lógica del cálculo

## Cómo funciona el cálculo
Para cada vendedor se suman sus ventas entre fecha inicio y fecha fin. Con ese total se busca la regla
cuyo rango lo contiene y se aplica su porcentaje: `comisión = total * porcentaje / 100`.

## Correr local
    bundle install
    rails db:migrate db:seed
    rails server

## Deploy
Render (ver pasos en la entrega). URL: _pegar aquí_
Video: _pegar aquí_
