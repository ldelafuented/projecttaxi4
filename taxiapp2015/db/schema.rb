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

ActiveRecord::Schema.define(version: 20150923230111) do

  create_table "customers", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellidos",  limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "nombre",          limit: 255
    t.string   "apellidos",       limit: 255
    t.string   "password_digest", limit: 255
    t.string   "nroPlacaAuto",    limit: 255
    t.string   "marca",           limit: 255
    t.string   "model",           limit: 255
    t.string   "nroAsientos",     limit: 255
    t.string   "tipoAuto",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "list_favorites", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "reservations_id", limit: 4
    t.integer  "reservation_id",  limit: 4
  end

  add_index "list_favorites", ["reservation_id"], name: "index_list_favorites_on_reservation_id", using: :btree
  add_index "list_favorites", ["reservations_id"], name: "index_list_favorites_on_reservations_id", using: :btree

  create_table "operators", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "nombre",          limit: 255
    t.string   "apellidos",       limit: 255
    t.string   "password_digest", limit: 255
    t.boolean  "esAdmin",         limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "codigo",          limit: 255
    t.string   "streetFrom",      limit: 255
    t.string   "streetTo",        limit: 255
    t.string   "referencias",     limit: 255
    t.datetime "dateReservation"
    t.string   "feedback",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "customer_id",     limit: 4
  end

  add_index "reservations", ["customer_id"], name: "index_reservations_on_customer_id", using: :btree

  add_foreign_key "list_favorites", "reservations"
  add_foreign_key "reservations", "customers"
end
