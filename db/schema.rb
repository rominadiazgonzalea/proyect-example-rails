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

ActiveRecord::Schema[7.0].define(version: 2022_07_22_033755) do
  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "saldo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleado", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paginas", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
    t.integer "position"
    t.boolean "visible"
    t.text "content"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_paginas_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_students_on_course_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "paginas", "subjects"
  add_foreign_key "students", "courses"
end
