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

<<<<<<< HEAD
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
=======
ActiveRecord::Schema[7.1].define(version: 2024_11_03_174229) do
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
>>>>>>> ef2547b39a0d0196af20b87c8fef226ee6cbb4a0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
