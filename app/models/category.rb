class Category < ApplicationRecord
  validates :name, presence: true
  validates_uniquenss_of :name
  has_many :products
end
