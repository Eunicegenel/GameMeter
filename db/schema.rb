# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_17_181943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "currentids", force: :cascade do |t|
    t.integer "game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.string "game_type"
    t.string "game_tag_1"
    t.string "game_tag_2"
    t.string "game_tag_3"
    t.string "game_tag_4"
    t.string "game_tag_5"
    t.float "score"
    t.text "image"
    t.text "gist"
    t.text "gamelink"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "user_id"
    t.integer "game_id"
    t.text "comment"
    t.float "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
