class Vendedor < ApplicationRecord
  has_many :ventas, dependent: :destroy
  validates :nombre, presence: true
end
