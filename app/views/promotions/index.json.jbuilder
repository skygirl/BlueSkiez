json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :title, :Description, :ImagePath, :StartDate, :EndDate
  json.url promotion_url(promotion, format: :json)
end
