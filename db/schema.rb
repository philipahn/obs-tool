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

ActiveRecord::Schema.define(version: 20161020004947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instructors", force: :cascade do |t|
    t.string  "name"
    t.integer "unique_id"
    t.integer "metro_id"
    t.index ["metro_id"], name: "index_instructors_on_metro_id", using: :btree
  end

  create_table "metros", force: :cascade do |t|
    t.string "name"
  end

  create_table "observations", force: :cascade do |t|
    t.string  "instance"
    t.date    "obs_date"
    t.string  "created_by"
    t.text    "obs_notes"
    t.integer "prep"
    t.integer "framing"
    t.integer "inst"
    t.integer "cfu"
    t.integer "active"
    t.date    "obs_edit"
    t.integer "instructor_id"
    t.index ["instructor_id"], name: "index_observations_on_instructor_id", using: :btree
  end

  add_foreign_key "instructors", "metros"
  add_foreign_key "observations", "instructors"
end
