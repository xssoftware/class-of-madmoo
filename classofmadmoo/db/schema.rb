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

ActiveRecord::Schema.define(version: 20140624234913) do

  create_table "assignments", force: true do |t|
    t.integer  "work_assignments_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["project_id"], name: "index_assignments_on_project_id", using: :btree
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id", using: :btree
  add_index "assignments", ["work_assignments_id"], name: "index_assignments_on_work_assignments_id", using: :btree

  create_table "forums", force: true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "forums", ["team_id"], name: "index_forums_on_team_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.integer  "forum_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["forum_id"], name: "index_posts_on_forum_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.text     "body"
    t.datetime "deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["team_id"], name: "index_projects_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "user_role_id"
    t.string   "name"
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
    t.integer  "team_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["team_id"], name: "index_users_on_team_id", using: :btree

  create_table "work_assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_assignments", ["project_id"], name: "index_work_assignments_on_project_id", using: :btree
  add_index "work_assignments", ["user_id"], name: "index_work_assignments_on_user_id", using: :btree

end
