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

ActiveRecord::Schema.define(version: 20140424023351) do

  create_table "customers", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "cust_fname"
    t.string   "cust_lname"
    t.string   "cust_mi"
    t.string   "cust_email"
    t.string   "cust_addr"
    t.string   "cust_city"
    t.integer  "cust_zip"
    t.string   "cust_phone"
    t.string   "cust_em_contact"
    t.string   "cust_em_contactrel"
    t.string   "cust_em_contactphone"
    t.string   "cust_dl"
    t.string   "cust_dl_state"
    t.date     "cust_dl_exp"
    t.string   "cust_status"
    t.string   "cust_uspa"
    t.string   "cust_uspalicense"
    t.date     "cust_reserve_date"
    t.date     "cust_uspa_exp"
    t.integer  "cust_cc"
    t.integer  "cust_id"
    t.date     "cust_waiver_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dailies", force: true do |t|
    t.time     "mon_schedule"
    t.string   "password_digest"
    t.integer  "mon_load_number"
    t.string   "mon_pilot"
    t.integer  "cust_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manifests", force: true do |t|
    t.integer  "bo_load_num"
    t.string   "password_digest"
    t.float    "bo_charges"
    t.float    "bo_debits"
    t.float    "bo_gear_rental"
    t.integer  "bo_rental_rig_number"
    t.string   "bo_jump_type"
    t.string   "bo_aircraft"
    t.string   "bo_pilot"
    t.integer  "bo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
