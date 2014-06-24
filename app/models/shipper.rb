class Shipper < ActiveRecord::Base
	has_many :services
	has_many :destinations
end
