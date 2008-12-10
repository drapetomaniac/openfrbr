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

ActiveRecord::Schema.define(:version => 20080829161616) do

  create_table "aboutnesses", :force => true do |t|
    t.integer "subject_id"
    t.string  "subject_type"
    t.integer "work_id"
  end

  create_table "concepts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "term"
    t.string   "comment"
  end

  create_table "corporate_bodies", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "dates"
    t.string   "other_designation"
    t.string   "place"
    t.string   "comment"
  end

  create_table "creations", :force => true do |t|
    t.integer "creator_id"
    t.string  "creator_type"
    t.integer "work_id"
    t.string  "relation"
  end

  create_table "events", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "term"
    t.string   "date"
    t.string   "comment"
  end

  create_table "expressions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "form"
    t.string   "date"
    t.string   "language"
    t.string   "comment"
  end

  create_table "families", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "family_type"
    t.string   "dates"
    t.string   "places"
    t.string   "history"
    t.string   "comment"
  end

  create_table "frbr_objects", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "term"
    t.string   "comment"
  end

  create_table "items", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "call_number"
    t.string   "identifier"
    t.string   "provenance"
    t.string   "comment"
    t.integer  "manifestation_id"
  end

  create_table "manifestations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "statement_of_responsibility"
    t.string   "edition"
    t.string   "identifier"
    t.string   "form_of_carrier"
    t.string   "publisher"
    t.string   "publication_date"
    t.string   "publication_place"
    t.string   "series_statement"
    t.string   "comment"
    t.integer  "expression_id"
  end

  create_table "ownerships", :force => true do |t|
    t.integer "owner_id"
    t.string  "owner_type"
    t.integer "item_id"
    t.string  "relation"
  end

  create_table "people", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "dates"
    t.string   "title"
    t.string   "other_designation"
    t.string   "affiliation"
    t.string   "country"
    t.string   "comment"
  end

  create_table "places", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "term"
    t.string   "comment"
  end

  create_table "productions", :force => true do |t|
    t.integer "producer_id"
    t.string  "producer_type"
    t.integer "manifestation_id"
    t.string  "relation"
  end

  create_table "realizations", :force => true do |t|
    t.integer "realizer_id"
    t.string  "realizer_type"
    t.integer "expression_id"
    t.string  "relation"
  end

  create_table "reifications", :force => true do |t|
    t.integer "work_id"
    t.integer "expression_id"
    t.string  "relation"
  end

  create_table "works", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "form"
    t.string   "date"
    t.string   "comment"
  end

end
