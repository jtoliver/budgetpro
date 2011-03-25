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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110324165534) do

  create_table "admins", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "codes", :force => true do |t|
    t.string   "objcode"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funds", :force => true do |t|
    t.string   "account"
    t.string   "program"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", :force => true do |t|
    t.string   "goal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "obj_code"
    t.text     "details"
    t.string   "amount"
    t.string   "approved"
    t.integer  "program_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["program_id"], :name => "index_items_on_program_id"

  create_table "programs", :force => true do |t|
    t.string   "dept"
    t.string   "fund"
    t.string   "program"
    t.string   "priority"
    t.string   "prog_status"
    t.text     "purpose"
    t.text     "desc"
    t.string   "link"
    t.integer  "user_id",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programs", ["user_id"], :name => "index_programs_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
