# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_10_12_171546) do
  create_table "reglas", force: :cascade do |t|
    t.string "nombre"
    t.decimal "monto_minimo", precision: 10, scale: 2
    t.decimal "monto_maximo", precision: 10, scale: 2
    t.decimal "porcentaje", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendedores", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ventas", force: :cascade do |t|
    t.integer "vendedor_id", null: false
    t.decimal "monto", precision: 10, scale: 2
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendedor_id"], name: "index_ventas_on_vendedor_id"
  end

  add_foreign_key "ventas", "vendedores"
end
