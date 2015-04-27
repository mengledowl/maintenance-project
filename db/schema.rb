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

ActiveRecord::Schema.define(version: 20150426043047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "kind"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "advising_appointments", force: true do |t|
    t.datetime "appointment_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

  create_table "colleges", force: true do |t|
    t.string   "college_attended"
    t.string   "dates_attended"
    t.decimal  "gpa"
    t.integer  "semester_hours"
    t.string   "degree_major"
    t.integer  "current_employment_hours"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "committees", force: true do |t|
    t.string   "committee_name"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "course_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "course_number"
  end

  create_table "enrollments", force: true do |t|
    t.string   "term"
    t.string   "grade"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_number"
    t.integer  "course_id"
  end

  create_table "job_postings", force: true do |t|
    t.text     "description"
    t.decimal  "required_gpa"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "job_postings_courses", force: true do |t|
    t.integer  "job_posting_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "committee_id"
    t.boolean  "citizenship"
    t.boolean  "graduated"
    t.decimal  "gpa"
  end

end
