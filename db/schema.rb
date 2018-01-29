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

ActiveRecord::Schema.define(version: 20180118200252) do

  create_table "courses", force: :cascade do |t|
    t.string "courseName"
    t.string "clientName"
    t.datetime "last_accessed"
    t.datetime "modified"
    t.datetime "created", null: false
    t.datetime "updated", null: false
  end

  create_table "employee_courses", force: :cascade do |t|
    t.integer "employeeID"
    t.integer "courseID"
    t.integer "employee_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_employee_courses_on_course_id"
    t.index ["employee_id"], name: "index_employee_courses_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "empID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "alias"
    t.string "landing_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "levelName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "requester"
    t.integer "courseID"
    t.string "pageName"
    t.integer "statusID"
    t.integer "levelID"
    t.text "detail"
    t.integer "assignTo"
    t.text "solution"
    t.integer "isReadyForQA"
    t.integer "isQAVerified"
    t.datetime "dateStampReadyQA"
    t.string "platform"
    t.string "browser"
    t.string "version"
    t.string "flash_version"
    t.datetime "created"
    t.datetime "modified"
    t.string "applause_id"
    t.integer "course_id"
    t.integer "status_id"
    t.integer "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_requests_on_course_id"
    t.index ["level_id"], name: "index_requests_on_level_id"
    t.index ["status_id"], name: "index_requests_on_status_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "statusName"
    t.string "statusShort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "group_id"
    t.integer "license_id"
    t.string "group_hint"
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "last_login"
    t.datetime "created"
    t.datetime "modified"
    t.string "timezone"
    t.integer "password_expires"
    t.string "verify_token"
    t.integer "is_enabled"
    t.integer "is_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
