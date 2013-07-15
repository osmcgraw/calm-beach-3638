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

ActiveRecord::Schema.define(:version => 20130203022247) do

  create_table "auction_parcels", :force => true do |t|
    t.integer  "auction_id"
    t.integer  "parcel_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "auction_parcels", ["auction_id"], :name => "index_auction_parcels_on_auction_id"
  add_index "auction_parcels", ["parcel_id"], :name => "index_auction_parcels_on_parcel_id"

  create_table "auctions", :force => true do |t|
    t.date     "file_date"
    t.date     "auction_date"
    t.integer  "file_parcel_join_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "auction_pdf_uploader"
    t.string   "auction_html_uploader"
  end

  add_index "auctions", ["file_parcel_join_id"], :name => "index_auctions_on_file_parcel_join_id"

  create_table "installs", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "installs", ["email"], :name => "index_installs_on_email", :unique => true
  add_index "installs", ["reset_password_token"], :name => "index_installs_on_reset_password_token", :unique => true

  create_table "parcels", :force => true do |t|
    t.integer  "number"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.decimal  "minimum_bid"
    t.string   "state"
    t.integer  "zillow_parcel_id"
    t.integer  "zip"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.boolean  "gmaps"
  end

  add_index "parcels", ["zillow_parcel_id"], :name => "index_parcels_on_zillow_parcel_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "zillow_parcels", :force => true do |t|
    t.integer  "zpid"
    t.string   "homedetails"
    t.string   "graphsanddata"
    t.string   "comparables"
    t.decimal  "zestimate"
    t.decimal  "value_range_high"
    t.decimal  "value_range_low"
    t.integer  "parcel_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "zillow_parcels", ["parcel_id"], :name => "index_zillow_parcels_on_parcel_id"

end
