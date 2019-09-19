ActiveRecord::Schema.define(version: 2019_09_19_234029) do

  enable_extension "plpgsql"

  create_table "holdings", force: :cascade do |t|
    t.integer "investor_id"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer "price"
    t.integer "rent"
    t.string "year_built"
    t.decimal "last_year_appreciation"
    t.decimal "next_year_appreciation"
    t.integer "lease_length"
    t.string "beds_baths_sqft"
    t.string "description"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
