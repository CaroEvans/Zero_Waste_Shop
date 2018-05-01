json.extract! product, :id, :price, :stock_level, :description, :category_id, :store_id, :created_at, :updated_at
json.url product_url(product, format: :json)
