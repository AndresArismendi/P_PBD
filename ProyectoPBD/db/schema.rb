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

ActiveRecord::Schema.define(version: 20140623005102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendamiento", id: false, force: true do |t|
    t.integer "id_oferta_veh"
    t.integer "run_cond"
    t.integer "run_cli"
  end

  add_index "agendamiento", ["id_oferta_veh"], name: "relationship_18_fk", using: :btree
  add_index "agendamiento", ["run_cli"], name: "relationship_13_fk", using: :btree
  add_index "agendamiento", ["run_cond"], name: "relationship_12_fk", using: :btree

  create_table "alerta_lic_cond", primary_key: "id_mens_alert_licenc", force: true do |t|
    t.string "plant_alert_licenc", limit: 1024
  end

  add_index "alerta_lic_cond", ["id_mens_alert_licenc"], name: "alerta_lic_cond_pk", unique: true, using: :btree

  create_table "alerta_rev_tec", primary_key: "id_plant_rev_tec", force: true do |t|
    t.string "plant_alert_rev_tec", limit: 1024
  end

  add_index "alerta_rev_tec", ["id_plant_rev_tec"], name: "alerta_rev_tec_pk", unique: true, using: :btree

  create_table "bloque_horario", primary_key: "id_bloq", force: true do |t|
    t.date "ini_bloq"
    t.date "fin_bloq"
  end

  add_index "bloque_horario", ["id_bloq"], name: "bloque_horario_pk", unique: true, using: :btree

  create_table "cliente", id: false, force: true do |t|
    t.integer "run_cli",                null: false
    t.string  "nom_cli",     limit: 40
    t.string  "ape_pat_cli", limit: 40
    t.string  "ape_mat_cli", limit: 40
    t.integer "tel1_cli"
    t.integer "tel2_cli"
    t.string  "email_cli",   limit: 40
  end

  add_index "cliente", ["run_cli"], name: "cliente_pk", unique: true, using: :btree

  create_table "cliente_empresa", id: false, force: true do |t|
    t.integer "run_cli", null: false
    t.integer "rut_emp"
  end

  add_index "cliente_empresa", ["run_cli"], name: "cliente_empresa_pk", unique: true, using: :btree
  add_index "cliente_empresa", ["rut_emp"], name: "relationship_21_fk", using: :btree

  create_table "cliente_natural", id: false, force: true do |t|
    t.integer "run_cli", null: false
  end

  add_index "cliente_natural", ["run_cli"], name: "cliente_natural_pk", unique: true, using: :btree

  create_table "comi_propietario", primary_key: "id_comi_prop", force: true do |t|
    t.float "porcent_comi_prop"
    t.date  "ini_comi_prop"
    t.date  "fin_comi_prop"
  end

  add_index "comi_propietario", ["id_comi_prop"], name: "comi_propietario_pk", unique: true, using: :btree

  create_table "concepto", primary_key: "id_conc", force: true do |t|
    t.string "nom_conc", limit: 60
  end

  add_index "concepto", ["id_conc"], name: "concepto_pk", unique: true, using: :btree

  create_table "conductor", primary_key: "run_cond", force: true do |t|
    t.integer "id_veh",                      null: false
    t.string  "nom_cond",         limit: 40
    t.string  "ape_pat_cond",     limit: 40
    t.string  "ape_mat_cond",     limit: 40
    t.integer "tel_cond"
    t.string  "email_cond",       limit: 40
    t.string  "venc_licenc_cond", limit: 40
  end

  add_index "conductor", ["id_veh"], name: "relationship_15_fk", using: :btree
  add_index "conductor", ["run_cond"], name: "conductor_pk", unique: true, using: :btree

  create_table "det_factura", primary_key: "id_det_fact", force: true do |t|
    t.integer "num_fact",       null: false
    t.integer "id_conc",        null: false
    t.integer "monto_det_fact"
  end

  add_index "det_factura", ["id_conc"], name: "relationship_17_fk", using: :btree
  add_index "det_factura", ["id_det_fact"], name: "det_factura_pk", unique: true, using: :btree
  add_index "det_factura", ["num_fact"], name: "relationship_16_fk", using: :btree

  create_table "empresa_externa", id: false, force: true do |t|
    t.integer "rut_emp",                     null: false
    t.string  "giro_emp",         limit: 40
    t.string  "nom_emp",          limit: 40
    t.string  "dir_emp",          limit: 40
    t.integer "tel1_emp"
    t.integer "tel2_emp"
    t.string  "email_emp",        limit: 40
    t.string  "est_conv_emp",     limit: 40
    t.date    "ini_conv_emp"
    t.date    "fin_conv_emp"
    t.text    "descrip_conv_emp"
  end

  add_index "empresa_externa", ["rut_emp"], name: "empresa_externa_pk", unique: true, using: :btree

  create_table "estado", primary_key: "id_est", force: true do |t|
    t.string "nom_est", limit: 40
  end

  add_index "estado", ["id_est"], name: "estado_pk", unique: true, using: :btree

  create_table "factura", primary_key: "num_fact", force: true do |t|
    t.integer "rut_emp"
    t.date    "fecha_fact"
    t.integer "total_fact"
  end

  add_index "factura", ["num_fact"], name: "factura_pk", unique: true, using: :btree
  add_index "factura", ["rut_emp"], name: "relationship_11_fk", using: :btree

  create_table "hist_estado", id: false, force: true do |t|
    t.integer "id_via", null: false
    t.integer "id_est", null: false
  end

  add_index "hist_estado", ["id_est"], name: "relationship_9_fk", using: :btree
  add_index "hist_estado", ["id_via"], name: "relationship_8_fk", using: :btree

  create_table "log_sql", primary_key: "id_log_sql", force: true do |t|
    t.date   "tms_log_sql"
    t.string "tabla_log_sql",     limit: 50
    t.string "operac_log_sql",    limit: 50
    t.string "usuar_log_sql",     limit: 50
    t.string "dat_antes_log_sql", limit: 50
    t.string "dat_desp_log_sql",  limit: 50
    t.string "ope_det_log_sql",   limit: 100
  end

  add_index "log_sql", ["id_log_sql"], name: "log_sql_pk", unique: true, using: :btree

  create_table "oferta_vehiculo", primary_key: "id_oferta_veh", force: true do |t|
    t.integer "id_veh"
    t.integer "id_bloq"
    t.string  "est_oferta_veh", limit: 40
  end

  add_index "oferta_vehiculo", ["id_bloq"], name: "relationship_19_fk", using: :btree
  add_index "oferta_vehiculo", ["id_oferta_veh"], name: "oferta_vehiculo_pk", unique: true, using: :btree
  add_index "oferta_vehiculo", ["id_veh"], name: "relationship_20_fk", using: :btree

  create_table "propietario", id: false, force: true do |t|
    t.integer "run_prop",                null: false
    t.string  "nom_prop",     limit: 40
    t.string  "ape_pat_prop", limit: 40
    t.string  "ape_mat_prop", limit: 40
    t.integer "tel_prop"
    t.string  "email_prop",   limit: 40
  end

  add_index "propietario", ["run_prop"], name: "propietario_pk", unique: true, using: :btree

  create_table "solicitud_viaje", primary_key: "id_sol", force: true do |t|
    t.integer "run_cli"
    t.integer "id_via"
    t.string  "dir_orig_sol",   limit: 60
    t.string  "dir_dest_sol",   limit: 60
    t.string  "com_orig_sol",   limit: 60
    t.string  "com_dest_sol",   limit: 60
    t.integer "cant_pasaj_sol"
    t.date    "fecha_crea_sol"
    t.date    "fecha_serv_sol"
    t.string  "est_sol",        limit: 20
  end

  add_index "solicitud_viaje", ["id_sol"], name: "solicitud_viaje_pk", unique: true, using: :btree
  add_index "solicitud_viaje", ["id_via"], name: "relationship_2_fk", using: :btree
  add_index "solicitud_viaje", ["run_cli"], name: "relationship_5_fk", using: :btree

  create_table "tarifa_fija", primary_key: "id_tar", force: true do |t|
    t.string  "ori_tar",   limit: 50
    t.string  "dest_tar",  limit: 50
    t.integer "costo_tar"
  end

  add_index "tarifa_fija", ["id_tar"], name: "tarifa_fija_pk", unique: true, using: :btree

  create_table "transicion", id: false, force: true do |t|
    t.integer "id_est",     null: false
    t.integer "est_id_est", null: false
  end

  add_index "transicion", ["est_id_est"], name: "relationship_6_fk", using: :btree
  add_index "transicion", ["id_est"], name: "relationship_7_fk", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "valor_base", primary_key: "id_val_base", force: true do |t|
    t.integer "val_base"
    t.date    "ini_val_base"
    t.date    "fin_val_base"
  end

  add_index "valor_base", ["id_val_base"], name: "valor_base_pk", unique: true, using: :btree

  create_table "valor_kilometro", primary_key: "id_val_km", force: true do |t|
    t.integer "val_km"
    t.date    "ini_val_km"
    t.date    "fin_val_km"
  end

  add_index "valor_kilometro", ["id_val_km"], name: "valor_kilometro_pk", unique: true, using: :btree

  create_table "vehiculo", primary_key: "id_veh", force: true do |t|
    t.integer "run_prop",              null: false
    t.string  "pat_veh",    limit: 10
    t.string  "mar_veh",    limit: 20
    t.string  "model_veh",  limit: 20
    t.string  "tipo_veh",   limit: 20
    t.integer "km_sem_veh"
  end

  add_index "vehiculo", ["id_veh"], name: "vehiculo_pk", unique: true, using: :btree
  add_index "vehiculo", ["run_prop"], name: "relationship_4_fk", using: :btree

  create_table "venc_rev_tec", id: false, force: true do |t|
    t.integer "ult_digito_rev_tec", null: false
    t.integer "mes_venc_rev_tec"
  end

  add_index "venc_rev_tec", ["ult_digito_rev_tec"], name: "venc_rev_tec_pk", unique: true, using: :btree

  create_table "viaje", primary_key: "id_via", force: true do |t|
    t.integer "run_cond"
    t.integer "id_sol",        null: false
    t.integer "id_det_fact",   null: false
    t.date    "hora_ini_via"
    t.integer "tiemp_est_via"
    t.float   "dist_est_via"
    t.integer "val_via"
  end

  add_index "viaje", ["id_det_fact"], name: "relationship_10_fk", using: :btree
  add_index "viaje", ["id_sol"], name: "relationship_3_fk", using: :btree
  add_index "viaje", ["id_via"], name: "viaje_pk", unique: true, using: :btree
  add_index "viaje", ["run_cond"], name: "relationship_14_fk", using: :btree

end
