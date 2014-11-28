json.array!(@jobs) do |job|
  json.extract! job, :id, :user_id, :cate_id, :region_id, :city_id, :district_id, :title, :salary, :content, :detail_address, :pv, :is_processed
  json.url job_url(job, format: :json)
end
