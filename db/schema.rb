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

ActiveRecord::Schema.define(version: 20160209182446) do

  create_table "doctors", force: true do |t|
    t.string   "doctor_name",                                           null: false
    t.string   "doctor_uid",                                            null: false
    t.string   "type",                                                  null: false
    t.decimal  "rating",          precision: 3, scale: 2, default: 5.0
    t.string   "contact_number1"
    t.string   "contact_number2"
    t.decimal  "latitude",        precision: 9, scale: 6, default: 0.0
    t.decimal  "longitude",       precision: 9, scale: 6, default: 0.0
    t.string   "doctor_icon"
    t.string   "doctor_banner"
    t.string   "address",                                 default: ""
    t.string   "caption",                                 default: ""
    t.string   "details",                                 default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emergency_services", force: true do |t|
    t.string "type", null: false
  end

  create_table "festivals", force: true do |t|
    t.string   "festival_name",   limit: 50,                          default: "",  null: false
    t.string   "festival_uid",    limit: 20,                          default: "",  null: false
    t.string   "festival_icon"
    t.string   "festival_banner"
    t.date     "festival_date"
    t.decimal  "latitude",                    precision: 9, scale: 6, default: 0.0
    t.decimal  "longitude",                   precision: 9, scale: 6, default: 0.0
    t.string   "details",                                             default: ""
    t.string   "caption",         limit: 100,                         default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", force: true do |t|
    t.string   "hotel_name",                                         default: "",     null: false
    t.string   "hotel_uid",       limit: 20,                         default: "",     null: false
    t.decimal  "rating",                     precision: 3, scale: 2, default: 5.0
    t.string   "contact_number1"
    t.string   "contact_number2"
    t.decimal  "latitude",                   precision: 9, scale: 6, default: 0.0
    t.decimal  "longitude",                  precision: 9, scale: 6, default: 0.0
    t.string   "hotel_icon"
    t.string   "hotel_banner"
    t.string   "offer",                                              default: "none"
    t.string   "address",                                            default: ""
    t.string   "caption",                                            default: ""
    t.string   "details",                                            default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "res_name",                                           default: "",     null: false
    t.string   "res_uid",         limit: 20,                         default: "",     null: false
    t.decimal  "rating",                     precision: 3, scale: 2, default: 5.0
    t.string   "contact_number1"
    t.string   "contact_number2"
    t.decimal  "latitude",                   precision: 9, scale: 6, default: 0.0
    t.decimal  "longitude",                  precision: 9, scale: 6, default: 0.0
    t.string   "res_icon"
    t.string   "res_banner"
    t.string   "offer",                                              default: "none"
    t.string   "address",                                            default: ""
    t.string   "caption",                                            default: ""
    t.string   "details",                                            default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "shop_name",       limit: 100,                         default: "",  null: false
    t.string   "shop_uid",        limit: 20,                          default: "",  null: false
    t.string   "shop_type"
    t.decimal  "latitude",                    precision: 9, scale: 6, default: 0.0
    t.decimal  "longitude",                   precision: 9, scale: 6, default: 0.0
    t.decimal  "rating",                      precision: 3, scale: 2, default: 5.0
    t.string   "shop_banner"
    t.string   "shop_icon"
    t.string   "owner_name",                                          default: ""
    t.string   "address",                                             default: ""
    t.string   "contact_number1"
    t.string   "contact_number2"
    t.string   "caption",                                             default: ""
    t.string   "details",                                             default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourist_destinations", force: true do |t|
    t.string   "place_name",                                            null: false
    t.string   "place_uid",                                             null: false
    t.decimal  "rating",          precision: 3, scale: 2, default: 5.0
    t.string   "contact_number1"
    t.string   "contact_number2"
    t.decimal  "latitude",        precision: 9, scale: 6, default: 0.0
    t.decimal  "longitude",       precision: 9, scale: 6, default: 0.0
    t.string   "place_icon"
    t.string   "banner"
    t.string   "caption",                                 default: ""
    t.string   "details",                                 default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
