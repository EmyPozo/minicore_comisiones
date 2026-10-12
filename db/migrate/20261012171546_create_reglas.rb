class CreateReglas < ActiveRecord::Migration[8.1]
  def change
    create_table :reglas do |t|
      t.string :nombre
      t.decimal :monto_minimo, precision: 10, scale: 2
      t.decimal :monto_maximo, precision: 10, scale: 2
      t.decimal :porcentaje, precision: 5, scale: 2

      t.timestamps
    end
  end
end
