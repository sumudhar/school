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

ActiveRecord::Schema.define(:version => 20130712102706) do

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.date     "published_on"
    t.text     "content"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "communities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.string   "qualification"
    t.string   "experience"
    t.string   "previous_company"
    t.text     "address"
    t.text     "address_cur"
    t.string   "street"
    t.string   "street_cur"
    t.string   "city"
    t.string   "city_cur"
    t.string   "state"
    t.string   "state_cur"
    t.string   "pincode"
    t.string   "pincode_cur"
    t.datetime "birth_date"
    t.datetime "joining_date"
    t.datetime "reliving_date"
    t.boolean  "is_active",           :default => true
    t.string   "employee_image"
    t.string   "employee_no"
    t.string   "gender"
    t.integer  "department_id"
    t.string   "email"
    t.string   "immidiate_contactno"
    t.string   "phone"
    t.string   "phone_one"
    t.string   "marrital_status"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "nationality"
    t.string   "blood_group"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "religions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "states", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "sur_name"
    t.string   "name"
    t.string   "section"
    t.string   "course_id"
    t.string   "gender"
    t.string   "caste"
    t.integer  "religion_id"
    t.string   "community"
    t.datetime "birth_date"
    t.datetime "admission_date"
    t.string   "admission_no"
    t.boolean  "is_active",                                                         :default => true
    t.string   "father_name"
    t.string   "blood_group"
    t.string   "nationality"
    t.string   "image"
    t.text     "address"
    t.string   "street"
    t.string   "city"
    t.string   "pincode"
    t.string   "state"
    t.string   "country"
    t.string   "contact_no_one"
    t.string   "contact_no_two"
    t.string   "immidiate_contact_no"
    t.string   "email"
    t.datetime "created_at",                                                                          :null => false
    t.datetime "updated_at",                                                                          :null => false
    t.string   "mother_name"
    t.string   "occupation"
    t.text     "moles"
    t.decimal  "annual_income",                      :precision => 13, :scale => 2, :default => 0.0
    t.string   "mother_tongue"
    t.string   "aadhar"
    t.string   "medium",               :limit => 45,                                                  :null => false
  end

end
