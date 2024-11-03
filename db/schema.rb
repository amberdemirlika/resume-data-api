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

ActiveRecord::Schema[7.1].define(version: 2024_11_03_180154) do
  create_table "experiences", force: :cascade do |t|
    t.integer "student_id"
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company_name"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "student_id"
    t.string "skill_name"

ActiveRecord::Schema[7.1].define(version: 2024_11_03_175937) do
  create_table "educations", force: :cascade do |t|
    t.integer "student_id"
    t.string "start_date"
    t.string "end_date"
    t.string "degree"
    t.string "university"
    t.text "details"

ActiveRecord::Schema[7.1].define(version: 2024_11_03_174400) do
  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_email"
    t.string "contact_email"
    t.string "phone_number"
    t.text "short_bio"
    t.string "linkedin_url"
    t.string "twitter_handle"
    t.string "website_url"
    t.string "resume_url"
    t.string "github_url"
    t.string "profile_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


ActiveRecord::Schema[7.1].define(version: 2024_11_03_174229) do
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
