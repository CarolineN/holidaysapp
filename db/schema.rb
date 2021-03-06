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

ActiveRecord::Schema.define(:version => 20150301124613) do

  create_table "bookings", :force => true do |t|
    t.integer  "holiday_id"
    t.integer  "customer_id"
    t.date     "departureDate"
    t.integer  "numOfPassengers"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.integer  "phoneNumber"
    t.date     "DOB"
    t.integer  "passportNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "holidays", :force => true do |t|
    t.string   "location"
    t.float    "price"
    t.string   "hotelName"
    t.string   "hotelImage"
    t.integer  "nights"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "noOfRooms"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "holiday_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
