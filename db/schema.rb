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

ActiveRecord::Schema.define(version: 2018_08_29_171109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_link"
    t.bigint "platform_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_id"], name: "index_games_on_platform_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "current_status"
    t.bigint "user_id"
    t.bigint "meetup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meetup_id"], name: "index_guests_on_meetup_id"
    t.index ["user_id"], name: "index_guests_on_user_id"
  end

  create_table "meetups", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.bigint "game_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "start_time"
    t.time "end_time"
    t.date "date"
    t.string "description"
    t.index ["game_id"], name: "index_meetups_on_game_id"
    t.index ["user_id"], name: "index_meetups_on_user_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imagelink"
    t.string "fullname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games", "platforms"
  add_foreign_key "guests", "meetups"
  add_foreign_key "guests", "users"
  add_foreign_key "meetups", "games"
  add_foreign_key "meetups", "users"
end
