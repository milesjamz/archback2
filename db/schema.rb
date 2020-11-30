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

ActiveRecord::Schema.define(version: 2020_11_30_211747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergens", force: :cascade do |t|
    t.string "name"
  end

  create_table "allergens_meals", id: false, force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "allergen_id", null: false
  end

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

  create_table "drinks", force: :cascade do |t|
    t.integer "quantity"
    t.integer "food_day_id"
    t.string "type"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.boolean "minutes_reps"
    t.integer "calories"
  end

  create_table "food_days", force: :cascade do |t|
    t.date "the_date"
    t.string "summary"
    t.integer "user_id"
  end

  create_table "food_days_meals", id: false, force: :cascade do |t|
    t.bigint "food_day_id", null: false
    t.bigint "meal_id", null: false
  end

  create_table "food_days_symptoms", id: false, force: :cascade do |t|
    t.bigint "food_day_id", null: false
    t.bigint "symptom_id", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.integer "quantity"
    t.integer "speed"
    t.integer "calories"
    t.integer "food_day_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.integer "severity"
    t.integer "length"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
