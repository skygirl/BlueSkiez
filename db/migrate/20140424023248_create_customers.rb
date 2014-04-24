class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password_digest
      t.string :cust_fname
      t.string :cust_lname
      t.string :cust_mi
      t.string :cust_email
      t.string :cust_addr
      t.string :cust_city
      t.integer :cust_zip
      t.string :cust_phone
      t.string :cust_em_contact
      t.string :cust_em_contactrel
      t.string :cust_em_contactphone
      t.string :cust_dl
      t.string :cust_dl_state
      t.date :cust_dl_exp
      t.string :cust_status
      t.string :cust_uspa
      t.string :cust_uspalicense
      t.date :cust_reserve_date
      t.date :cust_uspa_exp
      t.integer :cust_cc
      t.integer :cust_id
      t.date :cust_waiver_date

      t.timestamps
    end
  end
end
