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

ActiveRecord::Schema.define(version: 20150927013101) do

  create_table "key_data", force: :cascade do |t|
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storage_accounts", force: :cascade do |t|
    t.integer  "storage_type_id"
    t.string   "credential_blob"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "storage_accounts", ["storage_type_id"], name: "index_storage_accounts_on_storage_type_id"

  create_table "storage_types", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "value_stores", force: :cascade do |t|
    t.integer  "storage_account_id"
    t.integer  "key_datum_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "value_stores", ["key_datum_id"], name: "index_value_stores_on_key_datum_id"
  add_index "value_stores", ["storage_account_id"], name: "index_value_stores_on_storage_account_id"

end
