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

ActiveRecord::Schema.define(version: 2021_02_18_133156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "interests", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.string "interest", limit: 15
  end

  create_table "interests_b", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.string "interests", limit: 15
  end

  create_table "students", primary_key: "st_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "st_name", limit: 15
    t.string "st_last", limit: 15
  end

  add_foreign_key "interests", "students", primary_key: "st_id", name: "interests_student_id_fkey"
end
