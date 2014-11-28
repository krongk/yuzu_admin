json.array!(@resumes) do |resume|
  json.extract! resume, :id, :user_id, :cate_id, :region_id, :city_id, :district_id, :name, :summary, :sex, :age, :education, :work_year, :content, :mobile_phone, :mobile_phone_str, :email, :qq, :pv, :fav, :is_processed
  json.url resume_url(resume, format: :json)
end
