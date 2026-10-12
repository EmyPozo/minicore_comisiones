class CreateVendedores < ActiveRecord::Migration[8.1]
  def change
    create_table :vendedores do |t|
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
