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

  create_table "airports", force: :cascade do |t|
    t.string "name"
  end

  create_table "features", force: :cascade do |t|
    t.string "activity"
  end

  create_table "parkfeatures", force: :cascade do |t|
    t.integer "park_id"
    t.integer "feature_id"
  end

  add_index "parkfeatures", ["feature_id"], name: "index_parkfeatures_on_feature_id"
  add_index "parkfeatures", ["park_id"], name: "index_parkfeatures_on_park_id"

  create_table "parks", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.string   "country"
    t.integer  "rating"
    t.text     "summary"
    t.integer  "airport_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parks", ["airport_id"], name: "index_parks_on_airport_id"

  create_table "reviews", force: :cascade do |t|
    t.integer "park_id"
    t.integer "user_id"
    t.integer "rating"
    t.text    "body"
  end

  add_index "reviews", ["park_id"], name: "index_reviews_on_park_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
  end

end
