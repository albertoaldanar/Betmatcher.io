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

ActiveRecord::Schema.define(version: 20170719173025) do

  create_table "countries", force: :cascade do |t|
    t.integer  "sport_id"
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "depor"
    t.index ["sport_id"], name: "index_countries_on_sport_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer  "country_id"
    t.string   "local"
    t.string   "visit"
    t.datetime "date"
    t.boolean  "top"
    t.float    "pct_team"
    t.float    "pct_tie"
    t.integer  "clock"
    t.integer  "score_l"
    t.integer  "score_v"
    t.string   "part"
    t.string   "date_show"
    t.string   "picture"
    t.string   "color_l"
    t.string   "color_v"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "depor"
    t.index ["country_id"], name: "index_games_on_country_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "request_id"
    t.string   "status"
    t.string   "team_selected"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["request_id"], name: "index_matches_on_request_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "amount"
    t.string   "team_selected"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["game_id"], name: "index_requests_on_game_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
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
    t.string   "name"
    t.string   "username"
    t.integer  "coins"
    t.string   "country"
    t.string   "city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
