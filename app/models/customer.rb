class Customer < ActiveRecord::Base

validates :cust_fname, :presence => true
validates :cust_lname, :presence => true
validates :cust_fname, :presence => true
validates :cust_email, :presence => true
validates :cust_city, :presence => true
validates :cust_zip, :presence => true
validates :cust_zip, numericality: true
validates :cust_phone, :presence => true
validates :cust_em_contact, :presence => true
validates :cust_em_contactrel, :presence => true
validates :cust_em_contactphone, :presence => true
validates :cust_dl, :presence => true
validates :cust_dl_state, :presence => true
validates :cust_dl_exp, :presence => true
validates :cust_status, :presence => true
validates :cust_id, :presence => true
validates :cust_waiver_date, :presence => true

end
