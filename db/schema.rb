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

ActiveRecord::Schema.define(version: 20160412213123) do

  create_table "applicants", force: :cascade do |t|
    t.string   "name"
    t.string   "QID"
    t.string   "nationality"
    t.date     "dob"
    t.string   "gender"
    t.string   "status"
    t.integer  "noOfChildren"
    t.string   "livingArea"
    t.string   "phoneNo"
    t.string   "mobileNo"
    t.string   "disability"
    t.string   "details"
    t.text     "notes"
    t.string   "age"
    t.string   "reason"
    t.string   "education"
    t.text     "workshop"
    t.boolean  "currentJob"
    t.text     "jobDescription"
    t.text     "abilities"
    t.text     "preference"
    t.string   "skills"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "cv_file_name"
    t.string   "cv_content_type"
    t.integer  "cv_file_size"
    t.datetime "cv_updated_at"
    t.string   "membership_file_name"
    t.string   "membership_content_type"
    t.integer  "membership_file_size"
    t.datetime "membership_updated_at"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "companyName"
    t.string   "jobTitle"
    t.text     "jobDescription"
    t.string   "contactPerson"
    t.string   "mobileNo"
    t.string   "email"
    t.string   "nationality"
    t.string   "gender"
    t.integer  "age"
    t.string   "disability"
    t.string   "education"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "noOfEmployees"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "place"
    t.date     "datefrom"
    t.date     "dateto"
    t.time     "time"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.text     "body"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "q"
    t.text     "ans"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
