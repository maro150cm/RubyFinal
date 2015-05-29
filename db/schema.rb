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

ActiveRecord::Schema.define(version: 20150529113826) do

  create_table "courses", force: :cascade do |t|
    t.string   "course_id"
    t.string   "course_name"
    t.integer  "learn_point"
    t.integer  "entity_point"
    t.string   "learn_year"
    t.string   "year_part"
    t.string   "course_kind"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parttimes", force: :cascade do |t|
    t.integer  "part_number"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "partweeks", force: :cascade do |t|
    t.integer  "day_number"
    t.string   "week_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "teach_id"
    t.string   "teach_name"
    t.string   "teach_gender"
    t.string   "teach_level"
    t.string   "addr_no"
    t.string   "address"
    t.string   "tel"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "works", force: :cascade do |t|
    t.integer  "partweek_id"
    t.integer  "parttime_id"
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.integer  "group_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
