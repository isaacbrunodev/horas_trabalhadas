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

ActiveRecord::Schema[7.0].define(version: 2023_10_26_224931) do
  create_table "migrations", force: :cascade do |t|
    t.string "fix_typo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_memberships", force: :cascade do |t|
    t.date "joined", null: false
    t.date "leaved"
    t.integer "user_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_memberships_on_project_id"
    t.index ["user_id", "project_id"], name: "index_project_memberships_on_user_id_and_project_id", unique: true
    t.index ["user_id"], name: "index_project_memberships_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "summary_reports", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "task_type_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_summary_reports_on_project_id"
    t.index ["task_type_id"], name: "index_summary_reports_on_task_type_id"
    t.index ["user_id"], name: "index_summary_reports_on_user_id"
  end

  create_table "task_types", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id", "name"], name: "index_task_types_on_project_id_and_name", unique: true
    t.index ["project_id"], name: "index_task_types_on_project_id"
  end

  create_table "time_logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "task_type_id", null: false
    t.text "description"
    t.date "task_date", null: false
    t.time "work_hours", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_type_id"], name: "index_time_logs_on_task_type_id"
    t.index ["user_id"], name: "index_time_logs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "summary_reports", "projects"
  add_foreign_key "summary_reports", "task_types"
  add_foreign_key "summary_reports", "users"
end
