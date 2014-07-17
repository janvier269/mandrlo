json.array!(@locations) do |location|
  json.extract! location, :id, :area, :address, :keyword, :latitude, :longitude, :mapid
  json.url location_url(location, format: :json)
end
