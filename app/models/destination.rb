class Destination < ActiveRecord::Base
	belongs_to :shipper, foreign_key: "shipco_id"
	#belongs_to :services, through :shippers
end
