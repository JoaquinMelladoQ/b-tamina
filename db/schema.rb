# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_08_022632) do

  create_table "bagasses", force: :cascade do |t|
    t.integer "quantity"
    t.date "production_date"
    t.integer "brewery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brewery_id"], name: "index_bagasses_on_brewery_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "phone"
    t.string "address"
    t.integer "capacity"
    t.boolean "seller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_breweries_on_email", unique: true
    t.index ["reset_password_token"], name: "index_breweries_on_reset_password_token", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "phone"
    t.string "address"
    t.integer "movility"
    t.integer "capacity"
    t.boolean "seller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "deals", force: :cascade do |t|
    t.date "deal_date"
    t.integer "deal_quantity"
    t.boolean "confirmation", default: false
    t.integer "brewery_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brewery_id"], name: "index_deals_on_brewery_id"
    t.index ["client_id"], name: "index_deals_on_client_id"
  end

  create_table "yeasts", force: :cascade do |t|
    t.integer "quantity"
    t.date "production_date"
    t.string "strain"
    t.integer "brewery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brewery_id"], name: "index_yeasts_on_brewery_id"
  end

end
