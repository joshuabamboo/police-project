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

ActiveRecord::Schema.define(version: 20160925232307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "civilian_videos", force: :cascade do |t|
    t.integer  "civilian_id"
    t.integer  "video_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["civilian_id"], name: "index_civilian_videos_on_civilian_id", using: :btree
    t.index ["video_id"], name: "index_civilian_videos_on_video_id", using: :btree
  end

  create_table "civilians", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "sex"
    t.string  "race"
    t.integer "age"
  end

  create_table "cop_videos", force: :cascade do |t|
    t.integer  "cop_id"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cop_id"], name: "index_cop_videos_on_cop_id", using: :btree
    t.index ["video_id"], name: "index_cop_videos_on_video_id", using: :btree
  end

  create_table "cops", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "badge_number"
    t.string "sex"
    t.string "race"
  end

  create_table "details", force: :cascade do |t|
    t.integer  "video_id"
    t.string   "description"
    t.datetime "date"
    t.string   "location"
    t.boolean  "graphic"
    t.index ["video_id"], name: "index_details_on_video_id", using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "civilian_videos", "civilians"
  add_foreign_key "civilian_videos", "videos"
  add_foreign_key "cop_videos", "cops"
  add_foreign_key "cop_videos", "videos"
  add_foreign_key "details", "videos"
end
