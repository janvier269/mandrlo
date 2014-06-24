class Service < ActiveRecord::Base
  belongs_to :destinations
  belongs_to :shippers

  def self.search seach_term
  	return scope unless search_term.present?
  	where(['service_name LIKE ?', "%#{search_term}"])
  end



end
