class Service < ActiveRecord::Base

  belongs_to :destination
  belongs_to :shipper, foreign_key: "shipco_id"

  def self.search(destination_name, service_name)  #neeed to add a loction parameter

      @services = []
      @destination = Destination.find_by_location(destination_name)
      # so now, @service will send a search to Service model to find a match between destinations: 
      # the results of @destination
      #@services = Service.where(destination: @destination)


       # @location 
      ## You need to do if statments for the location parameter
      ## if location = "Current"
       ###  get from API
     ## else
          ##check location and make loction == coordinated for the location param.
      
      ##end

   


      if service_name == "Air"
            @services = Service.where("destination_id = ? and air_price > ?", @destination, 0)
      
      elsif service_name == "Sea"
            @services = Service.where("destination_id = ? and sea_price > ?", @destination, 0)
      
      elsif service_name == "Both"
            @services = Service.where("destination_id = ? and (air_price > ? OR sea_price > ?)", @destination, 0, 0)
            #where destination has both air and sea services
      end


     
      return @services

    end
  
  end 
