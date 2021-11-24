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

ActiveRecord::Schema.define(version: 2021_11_23_150727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arts", force: :cascade do |t|
    t.integer "starting_price"
    t.string "creator"
    t.text "description"
    t.string "title"
    t.string "category"
    t.string "measurements"
    t.boolean "is_for_auction"
    t.datetime "auction_end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.boolean "is_for_sale", default: true
    t.index ["user_id"], name: "index_arts_on_user_id"
  end

  create_table "bids", force: :cascade do |t|
    t.integer "amount"
    t.datetime "bid_timestamp"
    t.bigint "user_id", null: false
    t.bigint "art_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "did_win"
    t.index ["art_id"], name: "index_bids_on_art_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "transaction_timestamp"
    t.bigint "art_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "amount"
    t.index ["art_id"], name: "index_transactions_on_art_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "bio"
    t.string "street_address"
    t.string "postcode"
    t.string "personal_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "arts", "users"
  add_foreign_key "bids", "arts"
  add_foreign_key "bids", "users"
  add_foreign_key "transactions", "arts"
  add_foreign_key "transactions", "users"
end
