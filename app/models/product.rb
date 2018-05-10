class Product < ApplicationRecord
  belongs_to :category
  belongs_to :store
  mount_uploader :image, ProductImageUploader
  resourcify
  validates :name, :price, :stock_level, :category, :image, presence: true
  validates_uniquenss_of :name
  validates :description, presence: true, length: {in: 20..200}
end
