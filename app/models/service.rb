class Service < ActiveRecord::Base
  belongs_to :dest_id
  belongs_to :shipco_id

  def self.search seach_term
  	return scope unless search_term.present?
  	where(['service_name LIKE ?', "%#{search_term}"])
  end



end
