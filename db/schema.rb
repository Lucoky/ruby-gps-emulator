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

ActiveRecord::Schema[7.2].define(version: 2024_10_28_011321) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gps", force: :cascade do |t|
    t.string "device_id"
    t.float "latitude"
    t.float "longitude"
    t.datetime "last_reported_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "model"
    t.index ["device_id"], name: "index_gps_on_device_id", unique: true
  end

  create_table "gps_frame_sents", force: :cascade do |t|
    t.bigint "gps_id", null: false
    t.string "data"
    t.datetime "sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gps_id"], name: "index_gps_frame_sents_on_gps_id"
  end

  add_foreign_key "gps_frame_sents", "gps", column: "gps_id"
end
