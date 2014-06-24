class Destination < ActiveRecord::Base
	belongs_to :shippers

	# def self.search search_term
	# 	return scope unless search_term.present?
	# 	where(['destinations_name LIKE ?', "%#{{search_term}}"])
	# end

end
