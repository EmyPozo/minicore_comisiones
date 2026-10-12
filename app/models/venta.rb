class Venta < ApplicationRecord
  belongs_to :vendedor
  validates :monto, numericality: { greater_than: 0 }
  validates :fecha, presence: true
end
