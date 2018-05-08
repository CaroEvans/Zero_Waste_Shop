class Product < ApplicationRecord
  belongs_to :category
  belongs_to :store
  mount_uploader :image, ProductImageUploader
  resourcify
  validates :name, :price, :stock_level, :category, :image, presence: true
  validates :description, presence: true, length: {in: 20..200}
  scope(:product_name, -> (prod_name) { where("LOWER(name) like ?", "%#{prod_name.downcase}%")})
end
