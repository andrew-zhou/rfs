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

ActiveRecord::Schema.define(version: 20161205061729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupons", force: :cascade do |t|
    t.text     "image_url"
    t.text     "description"
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coupons", ["restaurant_id"], name: "index_coupons_on_restaurant_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "cost"
    t.text     "description"
    t.text     "image_url"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["restaurant_id"], name: "index_items_on_restaurant_id", using: :btree

  create_table "items_purchases", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items_purchases", ["item_id"], name: "index_items_purchases_on_item_id", using: :btree
  add_index "items_purchases", ["user_id"], name: "index_items_purchases_on_user_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["user_id"], name: "index_restaurants_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.boolean  "blacklisted"
    t.boolean  "owner"
    t.string   "provider"
    t.text     "uid"
    t.text     "oauth_token"
    t.datetime "oauth_expires_at"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "coupons", "restaurants"
  add_foreign_key "items", "restaurants"
  add_foreign_key "items_purchases", "items"
  add_foreign_key "items_purchases", "users"
  add_foreign_key "restaurants", "users"
  add_foreign_key "reviews", "restaurants"
  add_foreign_key "reviews", "users"
end
