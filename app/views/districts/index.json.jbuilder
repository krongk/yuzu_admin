json.array!(@districts) do |district|
  json.extract! district, :id, :city_id, :name
  json.url district_url(district, format: :json)
end
