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

ActiveRecord::Schema.define(version: 20150113171505) do

  create_table "questions", force: true do |t|
    t.text     "question"
    t.text     "opa"
    t.text     "opb"
    t.text     "opc"
    t.text     "opd"
    t.string   "ro"
    t.date     "year"
    t.integer  "examcode"
    t.integer  "subjectcode"
    t.integer  "topiccode"
    t.integer  "stopiccode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scodes", force: true do |t|
    t.integer  "scode"
    t.string   "sname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subtopiccodes", force: true do |t|
    t.integer  "stcode"
    t.string   "stname"
    t.integer  "tcode"
    t.string   "active",     limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topiccodes", force: true do |t|
    t.integer  "tcode"
    t.string   "tname"
    t.integer  "scode"
    t.string   "active",     limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
