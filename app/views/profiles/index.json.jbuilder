json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :hobbies, :starsign
  json.url profile_url(profile, format: :json)
end
