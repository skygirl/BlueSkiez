json.array!(@customers) do |customer|
  json.extract! customer, :id, :username, :password_digest, :cust_fname, :cust_lname, :cust_mi, :cust_email, :cust_addr, :cust_city, :cust_zip, :cust_phone, :cust_em_contact, :cust_em_contactrel, :cust_em_contactphone, :cust_dl, :cust_dl_state, :cust_dl_exp, :cust_status, :cust_uspa, :cust_uspalicense, :cust_reserve_date, :cust_uspa_exp, :cust_cc, :cust_id, :cust_waiver_date
  json.url customer_url(customer, format: :json)
end
