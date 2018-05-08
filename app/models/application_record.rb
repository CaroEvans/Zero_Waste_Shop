class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope(:search_term, -> (search_term) { where("LOWER(name) like ?", "%#{search_term.downcase}%")})

end
