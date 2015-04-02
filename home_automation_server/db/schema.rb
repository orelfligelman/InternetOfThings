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

ActiveRecord::Schema.define(version: 20150330090030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appliances", force: true do |t|
    t.string   "oven"
    t.boolean  "power"
    t.string   "microwave"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doors", force: true do |t|
    t.boolean  "lock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groceries", force: true do |t|
    t.string   "meat"
    t.string   "vegetable"
    t.string   "fruit"
    t.string   "dairy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lights", force: true do |t|
    t.integer  "intensity"
    t.boolean  "power"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.string   "television"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musics", force: true do |t|
    t.string   "song"
    t.string   "artist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "rooms", force: true do |t|
    t.string   "bedroom"
    t.string   "bath"
    t.string   "living"
    t.string   "dining"
    t.string   "garage"
    t.string   "basement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thermometers", force: true do |t|
    t.string   "location"
    t.float    "maxtemp"
    t.boolean  "power"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "current_temp"
    t.integer  "user_id"
  end

  add_index "thermometers", ["user_id"], name: "index_thermometers_on_user_id", using: :btree

  create_table "thermometers_users", id: false, force: true do |t|
    t.integer "user_id",        null: false
    t.integer "thermometer_id", null: false
  end

  add_index "thermometers_users", ["thermometer_id"], name: "index_thermometers_users_on_thermometer_id", using: :btree
  add_index "thermometers_users", ["user_id"], name: "index_thermometers_users_on_user_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
