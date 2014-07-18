class Service < ActiveRecord::Base

  belongs_to :destination
  belongs_to :shipper, foreign_key: "shipco_id"

  def self.search(destination, service_name, location)
      # search for all services that:
      #  go to destination
      #  are located in location
      #  and ship by service_name (Air, Sea, or Both)

      services = Service.where('destination_id = ?', destination)

      unless location.nil?
        services = services.joins(:shipper).where('area = ?', location.area)
      end

      if service_name == "Air"
            services = services.where("air_price > ?", 0)
      
      elsif service_name == "Sea"
            services = services.where("sea_price > ?", 0)
      
      elsif service_name == "Both"
            #where destination has both air and sea services
            services = services.where("(air_price > ? OR sea_price > ?)", 0, 0)
      end

      services
    end
  end 
