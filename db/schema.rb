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

ActiveRecord::Schema.define(version: 20160810001254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attacks", force: :cascade do |t|
    t.integer "character_id", null: false
    t.string  "name"
    t.string  "attack"
    t.string  "damage"
  end

  create_table "character_proficiencies", force: :cascade do |t|
    t.integer "proficiencie_id", null: false
    t.integer "character_id",    null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id",           null: false
    t.string  "name"
    t.string  "class"
    t.string  "background"
    t.string  "race"
    t.string  "alignment"
    t.string  "exp"
    t.string  "hit_dice"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "armor"
    t.string  "initiative"
    t.integer "speed"
    t.string  "inspiration"
    t.string  "proficiency"
    t.string  "strength_save"
    t.string  "dexterity_save"
    t.string  "constitution_save"
    t.string  "intelligence_save"
    t.string  "wisdom_save"
    t.string  "charisma_save"
    t.string  "acrobatics"
    t.string  "animal"
    t.string  "arcana"
    t.string  "athletics"
    t.string  "deception"
    t.string  "history"
    t.string  "insight"
    t.string  "intimidation"
    t.string  "investication"
    t.string  "medicine"
    t.string  "nature"
    t.string  "perception"
    t.string  "religion"
    t.string  "slight"
    t.string  "stealth"
    t.string  "survival"
    t.string  "casting_ability"
    t.string  "spell_dc"
    t.string  "spell_atk"
    t.string  "passive_wis"
    t.integer "hit_Points"
    t.integer "cp"
    t.integer "sp"
    t.integer "gp"
    t.integer "pp"
  end

  create_table "game_characters", force: :cascade do |t|
    t.integer "game_id",      null: false
    t.integer "character_id", null: false
  end

  create_table "game_users", force: :cascade do |t|
    t.integer "user_id",                    null: false
    t.integer "game_id",                    null: false
    t.string  "role",    default: "player", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "user_id",                  null: false
    t.string  "name",                     null: false
    t.text    "description",              null: false
    t.integer "visibility",   default: 0, null: false
    t.text    "public_notes"
    t.text    "dm_notes"
  end

  create_table "proficiencies", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "spell_castings", force: :cascade do |t|
    t.integer "character_id",        null: false
    t.string  "spell_casting_class"
    t.integer "lv1_slots"
    t.integer "lv2_slots"
    t.integer "lv3_slots"
    t.integer "lv4_slots"
    t.integer "lv5_slots"
    t.integer "lv6_slots"
    t.integer "lv7_slots"
    t.integer "lv8_slots"
    t.integer "lv9_slots"
  end

  create_table "spells", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "level"
    t.string  "name"
    t.text    "description"
  end

  create_table "text_boxes", force: :cascade do |t|
    t.integer "character_id", null: false
    t.string  "name"
    t.text    "text_box"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username",                            null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
