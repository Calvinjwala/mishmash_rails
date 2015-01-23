json.array!(@artists) do |artist|
  json.extract! artist, :id, :artist_name, :city, :state, :address, :zip_code, :category
  json.url artist_url(artist, format: :json)
end
