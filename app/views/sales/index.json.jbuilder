json.array!(@sales) do |sale|
  json.extract! sale, :id, :cust_id, :SaleType, :sale_date, :gear_rental, :Sale_price, :bo_load_num
  json.url sale_url(sale, format: :json)
end
