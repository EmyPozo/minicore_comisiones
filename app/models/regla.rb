class Regla < ApplicationRecord
  validates :nombre, presence: true
  validates :monto_minimo, numericality: { greater_than_or_equal_to: 0 }
  validates :monto_maximo, numericality: { greater_than: 0 }, allow_nil: true
  validates :porcentaje, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
