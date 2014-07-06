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

ActiveRecord::Schema.define(version: 20140624162127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: true do |t|
    t.string   "section"
    t.string   "location"
    t.string   "airport"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.integer  "destination_id"
    t.integer  "shipper_id"
    t.decimal   "air_price"
    t.decimal  "sea_price"
    t.boolean  "national"
    t.boolean  "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["destination_id"], name: "index_services_on_destination_id", using: :btree
  add_index "services", ["shipper_id"], name: "index_services_on_shipper_id", using: :btree

  create_table "shippers", force: true do |t|
    t.string   "shipco"
    t.string   "addr1"
    t.string   "add2"
    t.string   "city"
    t.integer  "zip"
    t.string   "area"
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.boolean  "oth_aes"
    t.boolean  "oth_ins"
    t.boolean  "oth_brok"
    t.string   "oth_impo"
    t.boolean  "inventory"
    t.boolean  "oth_pur"
    t.boolean  "oth_repa"
    t.boolean  "oth_ware"
    t.boolean  "pay_cash"
    t.boolean  "pay_chk"
    t.boolean  "pay_debCrd"
    t.boolean  "paypal"
    t.string   "phon1"
    t.string   "phon2"
    t.string   "pers1"
    t.string   "pers2"
    t.string   "long"
    t.string   "altitud"
    t.string   "email"
    t.string   "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
