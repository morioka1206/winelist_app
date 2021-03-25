# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_19_053402) do

  create_table "active_admin_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "grapes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "grapename1", null: false
    t.string "grapename2"
    t.string "grapename3"
    t.string "grapename4"
    t.string "grapename5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "o_wines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "winename", null: false
    t.string "winename_kana", null: false
    t.bigint "winary_id"
    t.integer "purchase_price"
    t.integer "salling_price", null: false
    t.text "comment", null: false
    t.integer "country_id", null: false
    t.integer "state_id", null: false
    t.integer "bio_id"
    t.integer "stock", null: false
    t.integer "type_id"
    t.boolean "onlist"
    t.bigint "wholesaler_id"
    t.bigint "grape_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grape_id"], name: "index_o_wines_on_grape_id"
    t.index ["wholesaler_id"], name: "index_o_wines_on_wholesaler_id"
    t.index ["winary_id"], name: "index_o_wines_on_winary_id"
  end

  create_table "r_wines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "winename", null: false
    t.string "winename_kana", null: false
    t.bigint "winary_id"
    t.integer "purchase_price"
    t.integer "salling_price", null: false
    t.text "comment", null: false
    t.integer "country_id", null: false
    t.integer "state_id", null: false
    t.integer "bio_id"
    t.integer "stock", null: false
    t.integer "type_id"
    t.boolean "onlist"
    t.bigint "wholesaler_id"
    t.bigint "grape_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grape_id"], name: "index_r_wines_on_grape_id"
    t.index ["wholesaler_id"], name: "index_r_wines_on_wholesaler_id"
    t.index ["winary_id"], name: "index_r_wines_on_winary_id"
  end

  create_table "s_wines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "winename", null: false
    t.string "winename_kana", null: false
    t.bigint "winary_id"
    t.integer "purchase_price"
    t.integer "salling_price", null: false
    t.text "comment", null: false
    t.integer "country_id", null: false
    t.integer "state_id", null: false
    t.integer "bio_id"
    t.integer "stock", null: false
    t.integer "type_id"
    t.boolean "onlist"
    t.bigint "wholesaler_id"
    t.bigint "grape_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grape_id"], name: "index_s_wines_on_grape_id"
    t.index ["wholesaler_id"], name: "index_s_wines_on_wholesaler_id"
    t.index ["winary_id"], name: "index_s_wines_on_winary_id"
  end

  create_table "taggings", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", collation: "utf8_bin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "w_wines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "winename", null: false
    t.string "winename_kana", null: false
    t.bigint "winary_id"
    t.integer "purchase_price"
    t.integer "salling_price", null: false
    t.text "comment", null: false
    t.integer "country_id", null: false
    t.integer "state_id", null: false
    t.integer "bio_id"
    t.integer "stock", null: false
    t.integer "type_id"
    t.boolean "onlist"
    t.bigint "wholesaler_id"
    t.bigint "grape_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grape_id"], name: "index_w_wines_on_grape_id"
    t.index ["wholesaler_id"], name: "index_w_wines_on_wholesaler_id"
    t.index ["winary_id"], name: "index_w_wines_on_winary_id"
  end

  create_table "wholesalers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "winaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "winaryname", null: false
    t.string "winaryname_kana", null: false
    t.bigint "wine_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "s_wine_id"
    t.bigint "r_wine_id"
    t.bigint "w_wine_id"
    t.bigint "o_wine_id"
    t.index ["o_wine_id"], name: "index_winaries_on_o_wine_id"
    t.index ["r_wine_id"], name: "index_winaries_on_r_wine_id"
    t.index ["s_wine_id"], name: "index_winaries_on_s_wine_id"
    t.index ["w_wine_id"], name: "index_winaries_on_w_wine_id"
    t.index ["wine_id"], name: "index_winaries_on_wine_id"
  end

  create_table "wine_grapes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "grape_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "s_wine_id"
    t.bigint "r_wine_id"
    t.bigint "w_wine_id"
    t.bigint "o_wine_id"
    t.index ["grape_id"], name: "index_wine_grapes_on_grape_id"
    t.index ["o_wine_id"], name: "index_wine_grapes_on_o_wine_id"
    t.index ["r_wine_id"], name: "index_wine_grapes_on_r_wine_id"
    t.index ["s_wine_id"], name: "index_wine_grapes_on_s_wine_id"
    t.index ["w_wine_id"], name: "index_wine_grapes_on_w_wine_id"
    t.index ["wine_id"], name: "index_wine_grapes_on_wine_id"
  end

  create_table "wines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "winename", null: false
    t.string "winename_kana", null: false
    t.integer "purchase_price"
    t.integer "salling_price", null: false
    t.text "comment", null: false
    t.integer "country_id", null: false
    t.integer "state_id", null: false
    t.integer "bio_id"
    t.integer "stock", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "onlist"
    t.bigint "wholesaler_id"
    t.bigint "winary_id"
    t.integer "type_id"
    t.index ["wholesaler_id"], name: "index_wines_on_wholesaler_id"
    t.index ["winary_id"], name: "index_wines_on_winary_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "o_wines", "grapes"
  add_foreign_key "o_wines", "wholesalers"
  add_foreign_key "o_wines", "winaries"
  add_foreign_key "r_wines", "grapes"
  add_foreign_key "r_wines", "wholesalers"
  add_foreign_key "r_wines", "winaries"
  add_foreign_key "s_wines", "grapes"
  add_foreign_key "s_wines", "wholesalers"
  add_foreign_key "s_wines", "winaries"
  add_foreign_key "w_wines", "grapes"
  add_foreign_key "w_wines", "wholesalers"
  add_foreign_key "w_wines", "winaries"
  add_foreign_key "winaries", "o_wines"
  add_foreign_key "winaries", "r_wines"
  add_foreign_key "winaries", "s_wines"
  add_foreign_key "winaries", "w_wines"
  add_foreign_key "winaries", "wines"
  add_foreign_key "wine_grapes", "grapes"
  add_foreign_key "wine_grapes", "o_wines"
  add_foreign_key "wine_grapes", "r_wines"
  add_foreign_key "wine_grapes", "s_wines"
  add_foreign_key "wine_grapes", "w_wines"
  add_foreign_key "wine_grapes", "wines"
  add_foreign_key "wines", "wholesalers"
  add_foreign_key "wines", "winaries"
end
