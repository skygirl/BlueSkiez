class CreateManifests < ActiveRecord::Migration
  def change
    create_table :manifests do |t|
      t.integer :bo_load_num
      t.string :password_digest
      t.float :bo_charges
      t.float :bo_debits
      t.float :bo_gear_rental
      t.integer :bo_rental_rig_number
      t.string :bo_jump_type
      t.string :bo_aircraft
      t.string :bo_pilot
      t.integer :bo_id

      t.timestamps
    end
  end
end
