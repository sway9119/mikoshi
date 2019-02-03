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

ActiveRecord::Schema.define(version: 20190203072043) do

  create_table "distribution_companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hulus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

  create_table "product_distribution_companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "product_id"
    t.bigint "distribution_company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["distribution_company_id"], name: "index_product_distribution_companies_on_distribution_company_id"
    t.index ["product_id"], name: "index_product_distribution_companies_on_product_id"
  end

  create_table "product_genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "product_id"
    t.bigint "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_product_genres_on_genre_id"
    t.index ["product_id"], name: "index_product_genres_on_product_id"
  end

  create_table "product_seasons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "product_id"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_seasons_on_product_id"
    t.index ["season_id"], name: "index_product_seasons_on_season_id"
  end

  create_table "product_serieses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "product_id"
    t.bigint "seriese_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_serieses_on_product_id"
    t.index ["seriese_id"], name: "index_product_serieses_on_seriese_id"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.integer "release_year"
    t.text "discription"
    t.string "director"
    t.string "cast"
    t.string "url"
    t.string "thumbnail"
    t.string "running_time"
    t.float "evaluation", limit: 24
    t.decimal "price", precision: 10
    t.integer "episode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serieses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "product_distribution_companies", "distribution_companies"
  add_foreign_key "product_distribution_companies", "products"
  add_foreign_key "product_genres", "genres"
  add_foreign_key "product_genres", "products"
  add_foreign_key "product_seasons", "products"
  add_foreign_key "product_seasons", "seasons"
  add_foreign_key "product_serieses", "products"
  add_foreign_key "product_serieses", "serieses"
end
