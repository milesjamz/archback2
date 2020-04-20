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

ActiveRecord::Schema.define(version: 2020_04_20_160225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.integer "algo"
    t.integer "apps"
    t.integer "blog"
    t.integer "song_rec"
    t.integer "song_wrote"
    t.integer "journal"
    t.integer "letters"
    t.integer "calls"
    t.integer "front_p"
    t.integer "side_p"
    t.integer "rear_p"
    t.integer "curls"
    t.integer "burpee"
    t.integer "push_u"
    t.integer "chin_u"
    t.integer "lunges"
    t.integer "lat_raise"
    t.integer "front_raise"
    t.integer "ohp"
    t.integer "mood"
    t.date "the_date"
    t.string "summary"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
