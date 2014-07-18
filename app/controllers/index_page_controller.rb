class IndexPageController < ApplicationController
  
  def searchIndex
  	@services = []
	end


	def indexResults
		# form selections
		@selectedLocation = Location.find_by(:area => params[:area])
		@selectedDestination = Destination.find_by(:location => params[:location])

		# search for services
		@services = Service.search(@selectedDestination, params[:service_name], @selectedLocation)

		# select tag options
		@locations = Location.all.order(:area)
		@destinations = Destination.all
   
	end	
end