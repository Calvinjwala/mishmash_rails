json.array!(@albums) do |album|
  json.extract! album, :id, :album_name, :album_image, :category
  json.url album_url(album, format: :json)
end
