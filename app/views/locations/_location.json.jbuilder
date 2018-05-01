json.extract! location, :id, :city, :state, :country, :post_code, :created_at, :updated_at
json.url location_url(location, format: :json)
