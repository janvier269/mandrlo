class IndexPageController < ApplicationController
  
  def searchIndex
  	@services = []
	end


	def indexResults

		@services = Service.search(params[:destination_name], params[:service_name])
	
    # @services.each do |service|
    #         service.shipper = Shipper.find_by_id(service.shipco_id)
    # end

	end	
end