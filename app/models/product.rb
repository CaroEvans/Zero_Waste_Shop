class Product < ApplicationRecord
  belongs_to :category
  belongs_to :store
  resourcify
  validates :name, :price, :stock_level, :description, :category, presence: true
end
