class Shipper < ActiveRecord::Base
	has_many :services
	has_many :destinations
	#has_one  :location, foreign_key: "location_id"
end
