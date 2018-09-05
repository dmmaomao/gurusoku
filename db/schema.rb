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

ActiveRecord::Schema.define(version: 20180905094609) do

  create_table "images", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "image_url",  limit: 65535
    t.integer  "izakaya_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "izakayas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "genre",      limit: 255
    t.integer  "izakaya_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "total_now",         limit: 4
    t.integer  "total_15min",       limit: 4
    t.integer  "four_seats_now",    limit: 4
    t.integer  "four_seats_15min",  limit: 4
    t.integer  "six_seats_now",     limit: 4
    t.integer  "six_seats_15min",   limit: 4
    t.integer  "eight_seats_now",   limit: 4
    t.integer  "eight_seats_15min", limit: 4
    t.integer  "teb_seats_now",     limit: 4
    t.integer  "ten_seats_15min",   limit: 4
    t.integer  "izakaya_id",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
