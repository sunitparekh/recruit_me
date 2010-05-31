# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100529165808) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.string   "position"
    t.float    "experience"
    t.string   "coordinator"
    t.string   "city"
    t.string   "office"
    t.string   "contact_number"
    t.string   "status"
    t.string   "inprogress_status"
    t.string   "decline_reason"
    t.string   "skills"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interviews", :force => true do |t|
    t.integer  "candidate_id"
    t.datetime "when"
    t.string   "interview_type"
    t.string   "interviewer_one"
    t.string   "interviewer_two"
    t.string   "interviewer_three"
    t.string   "where"
    t.string   "result"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
