class Destination < ActiveRecord::Base

	def self.search search_term
		return scope unless search_term.present?
		where(['destination_name LIKE ?', "%#{{search_term}}"])
	end

end
