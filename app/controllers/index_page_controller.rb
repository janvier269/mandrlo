class IndexPageController < ApplicationController
  
  def searchIndex
  	@services = []
	end


	def indexResults

		@services = Service.search(params[:destination_name], params[:service_name])
	
	end	
end