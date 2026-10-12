json.extract! venta, :id, :vendedor_id, :monto, :fecha, :created_at, :updated_at
json.url venta_url(venta, format: :json)
