# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_24_050627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "disc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "disc"
    t.string "notes"
    t.string "unit"
    t.integer "quantity"
    t.bigint "cat_id", null: false
    t.bigint "sub_cat_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
    t.string "thumb"
    t.index ["cat_id"], name: "index_items_on_cat_id"
    t.index ["sub_cat_id"], name: "index_items_on_sub_cat_id"
  end

  create_table "sub_cats", force: :cascade do |t|
    t.string "name"
    t.string "disc"
    t.bigint "cat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cat_id"], name: "index_sub_cats_on_cat_id"
  end

  add_foreign_key "items", "cats"
  add_foreign_key "sub_cats", "cats"
end
