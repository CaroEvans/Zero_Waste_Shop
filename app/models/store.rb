class Store < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :products, dependent: :destroy
  validates :name, presence: true
  validates_uniqueness_of :name
end
