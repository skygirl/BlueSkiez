class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.time :mon_schedule
      t.string :password_digest
      t.integer :mon_load_number
      t.string :mon_pilot
      t.integer :cust_id

      t.timestamps
    end
  end
end
