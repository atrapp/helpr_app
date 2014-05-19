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

ActiveRecord::Schema.define(version: 20140519142238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "cat"
    t.boolean  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lng"
    t.float    "lat"
  end

  create_table "offers", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "gender"
    t.integer  "age"
    t.string   "phone"
    t.string   "email"
    t.string   "description"
    t.integer  "rating"
    t.string   "picUrl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end