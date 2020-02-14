# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_14_154452) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "photo"
    t.string "weather_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "airport_code"
    t.string "currency"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "city_id", null: false
    t.string "review"
    t.boolean "travelled"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_trips_on_city_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "password_digest"
    t.string "bio"
    t.string "photo", default: "/assets/frog-174cec3496eb3a3407c0339c3d921efd145a5babf01e4ad307718ffda042ffef.png"
    t.string "hometown"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "airport"
  end

  add_foreign_key "trips", "cities"
  add_foreign_key "trips", "users"
end
