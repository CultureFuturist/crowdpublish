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

ActiveRecord::Schema.define(:version => 20121005031706) do

  create_table "authors", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "Ustreamid"
    t.string    "Ustreamchat"
    t.string    "twitter"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "title"
    t.string    "bkpurchaseurl"
    t.string    "avatar_file_name"
    t.string    "avatar_content_type"
    t.integer   "avatar_file_size"
    t.timestamp "avatar_updated_at"
    t.string    "genre"
    t.string    "genre2"
    t.string    "genre3"
    t.string    "bookpicurl"
    t.string    "bookpicurl2"
    t.string    "bookpicurl3"
    t.string    "authorbook"
    t.string    "authorbook2"
    t.string    "authorbook3"
    t.string    "towrite"
    t.string    "towrite2"
    t.string    "soonbkpicurl"
    t.string    "soonbkpicurl2"
    t.string    "bookblurb"
    t.string    "bookblurb2"
    t.string    "bookblurb3"
    t.string    "soonbookblurb"
    t.string    "soonbookblurb2"
    t.string    "blogurl"
    t.string    "password_digest"
    t.string    "remember_token"
    t.string    "profilepic"
  end

  add_index "authors", ["remember_token"], :name => "index_authors_on_remember_token"

  create_table "bookevents", :force => true do |t|
    t.string    "name"
    t.timestamp "start_at"
    t.timestamp "end_at"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "bookfiles", :force => true do |t|
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "bookpdfs", :force => true do |t|
    t.string    "filename"
    t.string    "filetype"
    t.binary    "filedata"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "books", :force => true do |t|
    t.string   "coverpicurl"
    t.string   "title"
    t.text     "blurb"
    t.date     "releasedate"
    t.integer  "author_id"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bkpurchaseurl"
    t.string   "bookpurchaseurl"
    t.string   "fiftychar"
    t.float    "price"
    t.string   "bookpdf"
    t.string   "image"
    t.string   "coverpic"
  end

  add_index "books", ["author_id", "releasedate"], :name => "index_books_on_author_id_and_releasedate"

  create_table "bookworms", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "picurl"
    t.string    "fanbook"
    t.string    "review"
    t.string    "fanbook2"
    t.string    "review2"
    t.string    "fanbook3"
    t.string    "review3"
    t.string    "fanauthor"
    t.string    "fanauthor2"
    t.string    "fanauthor3"
    t.string    "genre"
    t.string    "genre2"
    t.string    "genre3"
    t.string    "todo"
    t.string    "todo2"
    t.string    "twitter"
    t.string    "facebook"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "authorreview"
    t.string    "authorreview2"
    t.string    "authorreview3"
    t.string    "password_digest"
    t.string    "remember_token"
  end

  add_index "bookworms", ["remember_token"], :name => "index_bookworms_on_remember_token"

  create_table "events", :force => true do |t|
    t.string    "name"
    t.timestamp "start_at"
    t.timestamp "end_at"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "desc"
    t.string    "address"
    t.string    "rsvp"
    t.string    "personname"
    t.string    "email"
  end

  create_table "plans", :force => true do |t|
    t.string   "name"
    t.integer  "author_id"
    t.float    "price"
    t.integer  "term"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", :force => true do |t|
    t.integer  "author_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stripe_customer_token"
    t.integer  "plan_id"
  end

end
