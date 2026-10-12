class CreateVentas < ActiveRecord::Migration[8.1]
  def change
    create_table :ventas do |t|
      t.references :vendedor, null: false, foreign_key: true
      t.decimal :monto, precision: 10, scale: 2
      t.date :fecha

      t.timestamps
    end
  end
end
