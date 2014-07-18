class Service < ActiveRecord::Base

  belongs_to :destination
  belongs_to :shipper, foreign_key: "shipco_id"

  def self.search(destination_name, service_name, location)  #neeed to add a loction parameter

      destination = Destination.find_by_location(destination_name)
      # so now, @service will send a search to Service model to find a match between destinations: 
      # the results of @destination
      #@services = Service.where(destination: @destination)


       # @location 
      ## need to do if statments for the location parameter
      ## if location = "Current"
       ###  get from API
     ## else
          ##check location and make loction == coordinated for the location param.
      
      ##end

      services = Service.joins(:shipper)
        .where('destination_id = ? and area = ?', destination, location.area)
      if service_name == "Air"
            services = services.where("air_price > ?", 0)
      
      elsif service_name == "Sea"
            services = services.where("sea_price > ?", 0)
      
      elsif service_name == "Both"
            services = services.where("(air_price > ? OR sea_price > ?)", 0, 0)
            #where destination has both air and sea services
      end


     
      services

    end
  
  end 
