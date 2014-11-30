json.array!(@photos) do |photo|
  json.extract! photo, :id, :user_id, :title, :source_type, :source_id, :external_url
  json.url photo_url(photo, format: :json)
end
