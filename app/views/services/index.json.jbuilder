json.array!(@services) do |service|
  json.extract! service, :id, :destination_id, :shipco_id, :shipper_id, :air_price, :sea_price, :national, :other
  json.url service_url(service, format: :json)
end
