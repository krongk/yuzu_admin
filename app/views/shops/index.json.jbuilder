json.array!(@shops) do |shop|
  json.extract! shop, :id, :user_id, :region_id, :city_id, :district, :title, :detail_address, :content, :contact_name, :mobile_phone, :mobile_phone_url, :email, :email_url, :website, :pv, :source, :source_url, :is_processed
  json.url shop_url(shop, format: :json)
end
