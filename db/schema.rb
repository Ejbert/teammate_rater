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

ActiveRecord::Schema.define(version: 0) do

  create_table "courses", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.integer "section"
    t.text    "quarter"
    t.integer "year"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.text    "review"
    t.integer "rating"
    t.integer "team_member_id"
  end

  add_index "reviews", ["team_member_id"], name: "index_reviews_on_team_member_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "team_members", force: :cascade do |t|
    t.integer "team_id"
    t.integer "user_id"
  end

  add_index "team_members", ["team_id"], name: "index_team_members_on_team_id"
  add_index "team_members", ["user_id"], name: "index_team_members_on_user_id"

  create_table "teams", force: :cascade do |t|
    t.integer "course_id"
    t.string  "name"
    t.text    "description"
  end

  add_index "teams", ["course_id"], name: "index_teams_on_course_id"

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
  end

end
