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

ActiveRecord::Schema.define(version: 20180623083118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pipeline_id"
    t.index ["pipeline_id"], name: "index_categories_on_pipeline_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "glassdoor"
    t.string "linkedin"
    t.string "company_website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_companies_on_category_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "phone"
    t.string "email"
    t.bigint "company_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
  end

  create_table "job_openings", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.text "description"
    t.bigint "company_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_job_openings_on_company_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "description"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_notes_on_company_id"
  end

  create_table "pipelines", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories", "pipelines"
  add_foreign_key "companies", "categories"
end
