# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_24_185223) do
  create_table "aliases", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "person_id", null: false
    t.bigint "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_aliases_on_person_id"
    t.index ["site_id"], name: "index_aliases_on_site_id"
  end

  create_table "people", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_people_on_name"
  end

  create_table "performers", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "alias_id", null: false
    t.bigint "scene_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alias_id"], name: "index_performers_on_alias_id"
    t.index ["scene_id"], name: "index_performers_on_scene_id"
  end

  create_table "scenes", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name", null: false
    t.date "release"
    t.text "description"
    t.bigint "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_scenes_on_name"
    t.index ["release"], name: "index_scenes_on_release"
    t.index ["site_id"], name: "index_scenes_on_site_id"
  end

  create_table "sites", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_sites_on_name"
  end

  add_foreign_key "aliases", "people"
  add_foreign_key "aliases", "sites"
  add_foreign_key "performers", "aliases"
  add_foreign_key "performers", "scenes"
  add_foreign_key "scenes", "sites"
end
