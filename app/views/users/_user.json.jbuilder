json.extract! user, :id, :first_name, :last_name, :email, :street_address, :location_id, :phone_number, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
