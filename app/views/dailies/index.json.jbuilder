json.array!(@dailies) do |daily|
  json.extract! daily, :id, :mon_schedule, :password_digest, :mon_load_number, :mon_pilot, :cust_id
  json.url daily_url(daily, format: :json)
end
