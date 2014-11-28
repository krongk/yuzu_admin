json.array!(@products) do |product|
  json.extract! product, :id, :user_id, :cate_id, :region_id, :city_id, :district_id, :title, :content, :price, :detail_address, :pv, :is_processed
  json.url product_url(product, format: :json)
end
