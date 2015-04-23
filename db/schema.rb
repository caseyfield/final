# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 0) do

  create_table "appointment_slots", force: true do |t|
    t.integer "start_time"
    t.integer "end_time"
    t.integer "day"
    t.integer "month"
    t.integer "year"
    t.integer "location_id"
    t.string  "available"
    t.integer "user_id"
  end

  add_index "appointment_slots", ["location_id"], name: "index_appointment_slots_on_location_id"
  add_index "appointment_slots", ["user_id"], name: "index_appointment_slots_on_user_id"

  create_table "inventories", force: true do |t|
    t.integer "user_id"
    t.integer "day_created"
    t.integer "month_created"
    t.integer "year_created"
  end

  add_index "inventories", ["user_id"], name: "index_inventories_on_user_id"

  create_table "items", force: true do |t|
    t.string  "name"
    t.text    "description"
    t.string  "photograph"
    t.string  "status"
    t.integer "price_received"
    t.string  "vendor"
    t.integer "inventory_list"
  end

  create_table "locations", force: true do |t|
    t.string "city"
    t.string "state"
    t.string "country"
  end

  create_table "reviews", force: true do |t|
    t.integer "user_id"
    t.integer "appointment_slot_id"
    t.integer "stars"
    t.text    "body"
    t.integer "day_created"
    t.integer "month_created"
    t.integer "year_created"
  end

  add_index "reviews", ["appointment_slot_id"], name: "index_reviews_on_appointment_slot_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "phone_number"
    t.string  "address"
    t.integer "credit_card"
    t.string  "password"
  end

  create_table "zip_codes", force: true do |t|
    t.integer "zip"
    t.integer "location_id"
  end

  add_index "zip_codes", ["location_id"], name: "index_zip_codes_on_location_id"

end
