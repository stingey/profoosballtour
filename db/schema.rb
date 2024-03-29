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

ActiveRecord::Schema.define(version: 20200117024502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "address1"
    t.string "address2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "meeting_time"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "local_tournaments", force: :cascade do |t|
    t.string "name"
    t.text "participants", default: [], array: true
    t.string "tournament_type", default: "double elimination"
    t.integer "format"
    t.string "unique_url"
    t.string "challonge_url"
    t.string "challonge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "club_id"
    t.string "status", default: "signing_up", null: false
    t.text "tournament_hash"
    t.jsonb "results_hash", default: {}
    t.index ["club_id"], name: "index_local_tournaments_on_club_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "gender", null: false
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranking_details", force: :cascade do |t|
    t.bigint "player_id"
    t.integer "singles_points", null: false
    t.integer "doubles_points", null: false
    t.integer "womens_singles_points"
    t.integer "womens_doubles_points"
    t.string "singles_rank"
    t.string "doubles_rank"
    t.string "womens_singles_rank"
    t.string "womens_doubles_rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "singles_position"
    t.integer "doubles_position"
    t.integer "womens_singles_position"
    t.integer "womens_doubles_position"
    t.integer "previous_singles_position"
    t.integer "previous_doubles_position"
    t.integer "previous_womens_singles_position"
    t.integer "previous_womens_doubles_position"
    t.index ["player_id"], name: "index_ranking_details_on_player_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.string "contact"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "local_tournaments", "clubs"
  add_foreign_key "ranking_details", "players"
end
