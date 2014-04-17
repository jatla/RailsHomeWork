json.array!(@home_works) do |home_work|
  json.extract! home_work, :id, :week, :difficulty_level, :description
  json.url home_work_url(home_work, format: :json)
end
