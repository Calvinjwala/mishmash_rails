json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :image, :password_digest, :profile_photo, :cover_photo, :about_me
  json.url user_url(user, format: :json)
end
