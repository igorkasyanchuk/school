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

ActiveRecord::Schema.define(:version => 20120926174033) do

  create_table "klasses", :force => true do |t|
    t.integer "school_id", :null => false
    t.string  "name"
  end

  add_index "klasses", ["school_id"], :name => "index_klasses_on_school_id"

  create_table "klasses_students", :force => true do |t|
    t.integer "klass_id",                  :null => false
    t.integer "student_id",                :null => false
    t.integer "position",   :default => 0
  end

  add_index "klasses_students", ["klass_id"], :name => "index_klasses_students_on_klass_id"
  add_index "klasses_students", ["student_id"], :name => "index_klasses_students_on_student_id"

  create_table "schools", :force => true do |t|
    t.string "name"
  end

  create_table "students", :force => true do |t|
    t.integer "school_id", :null => false
    t.string  "name"
  end

  add_index "students", ["school_id"], :name => "index_students_on_school_id"

end
