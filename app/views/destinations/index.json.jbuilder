json.array!(@destinations) do |destination|
  json.extract! destination, :id, :section, :location, :airport
  json.url destination_url(destination, format: :json)
end
