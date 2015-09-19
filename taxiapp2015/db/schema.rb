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

ActiveRecord::Schema.define(version: 20150919130420) do

  create_table "cities", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "dni",        limit: 255
    t.string   "phone",      limit: 255
    t.string   "mobile",     limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "dni",        limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "dni",        limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "price_groups", force: :cascade do |t|
    t.string   "city_from",  limit: 255
    t.string   "city_to",    limit: 255
    t.decimal  "cost",                   precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "city_from",     limit: 255
    t.string   "city_to",       limit: 255
    t.datetime "date_receipt"
    t.integer  "nro_passanger", limit: 4
    t.integer  "payment_type",  limit: 4
    t.integer  "status_ticket", limit: 4
    t.string   "reference",     limit: 255
    t.string   "feedback",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "brand",      limit: 255
    t.string   "model",      limit: 255
    t.string   "inumber",    limit: 255
    t.integer  "type",       limit: 4
    t.integer  "capacity",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
