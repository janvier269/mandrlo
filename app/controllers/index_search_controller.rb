#return all projects taht match the search criteria
@destination_search = Destination.search(params[:destination_name]).all
#return all clients that match the search criteria
@service_search = Service.search(params[:service_name]).all