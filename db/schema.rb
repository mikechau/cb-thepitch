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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121028032835) do

  create_table "pitches", :force => true do |t|
    t.string   "job_title"
    t.string   "company"
    t.string   "location"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "profile_link"
    t.string   "headline"
    t.string   "why_you_want_me"
    t.string   "video_link"
    t.string   "jd_answer"
    t.string   "what_i_would_do"
    t.string   "item1"
    t.string   "item2"
    t.string   "item3"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "did"
  end

end
