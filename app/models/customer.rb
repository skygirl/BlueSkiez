class Customer < ActiveRecord::Base

attr_accessible :cust_address1, :cust_city, :cust_email, :cust_fname, :cust_lname, :cust_phone, :cust_zip, :password, :password_confirmation, :username



validates :cust_fname, :presence => true
validates :cust_lname, :presence => true
validates :cust_email, :presence => true
validates :cust_phone, :presence => true
validates :username, :presence => true, :uniqueness => true 
has_secure_password


	def cust_name
		cust_lname + ", " + cust_fname
		end

has_many :sale, dependent:  :destroy
	end

	