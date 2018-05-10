class Location < ApplicationRecord
  has_many :stores
  has_many :profiles

  validates :city, :state, :country, :post_code, presence: true
  validates_uniqueness_of :city

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{city}, #{state}, #{country}, #{post_code}"
  end
end
