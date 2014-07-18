class IndexPageController < ApplicationController
  
  def searchIndex
  	@services = []
	end


	def indexResults

		@selectedLocation = Location.find_by(:area => params[:area])
		@services = Service.search(params[:destination_name], params[:service_name], @selectedLocation)
		p 'services'
		p @services
		@locations = Location.all.order(:area)
    # @services.each do |service|
    #         service.shipper = Shipper.find_by_id(service.shipco_id)
    # end

	end	
end