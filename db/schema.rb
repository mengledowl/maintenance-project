# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150226152537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "preferred_name"
    t.string   "ssn"
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.boolean  "arkansas_resident"
    t.string   "cell_phone"
    t.string   "work_phone"
    t.string   "email"
    t.string   "current_employer"
    t.string   "length_of_employment"
    t.string   "race"
    t.string   "gender"
    t.string   "citizenship"
    t.string   "visa_type"
    t.string   "country_of_citizenship"
    t.string   "requested_admission_year"
    t.string   "mis_program_type"
    t.boolean  "past_applicant"
    t.date     "past_application_date"
    t.boolean  "past_enrollment"
    t.date     "past_enrollment_date"
    t.string   "enrollment_type"
    t.date     "gmat_date"
    t.integer  "gmat_score"
    t.date     "toefl_date"
    t.integer  "toefl_score"
    t.text     "comments"
    t.string   "status"
    t.boolean  "alumni"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
