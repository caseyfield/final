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

  create_table "categories", force: true do |t|
    t.string "name"
    t.string "image"
  end

  create_table "cities", force: true do |t|
    t.string "name"
  end

  create_table "conditions", force: true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "items", force: true do |t|
    t.string  "name"
    t.string  "image"
    t.text    "description"
    t.integer "price"
    t.string  "selling_url"
    t.string  "condition_id"
    t.integer "city_id"
    t.integer "category_id"
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"
  add_index "items", ["city_id"], name: "index_items_on_city_id"
  add_index "items", ["condition_id"], name: "index_items_on_condition_id"

  create_table "users", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password_digest"
    t.boolean "admin",           default: false
  end

end
