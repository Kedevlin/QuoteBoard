
ActiveRecord::Schema.define(version: 20151129185900) do

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.integer  "commenter_id"
    t.integer  "quote_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "body"
    t.integer  "speaker_id"
    t.integer  "poster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
