class Location < ApplicationRecord
  has_many :stores
  has_many :profiles

  validates :city, :state, :country, :post_code, presence: true
  geocoded_by :full_street_address
  after_validation :geocode
  def full_address
    "#{city}, #{state}, #{country}, #{post_code}"
  end
end
