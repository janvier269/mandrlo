json.array!(@services) do |service|
  json.extract! service, :id, :dest_id_id, :shipco_id_id, :air_price, :sea_price, :national, :other
  json.url service_url(service, format: :json)
end
