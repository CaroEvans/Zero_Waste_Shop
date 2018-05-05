class Location < ApplicationRecord
  has_many :users

  def full_address
    "#{city}, #{state}, #{country}, #{post_code}"
  end
  
end
