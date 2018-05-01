json.extract! profile, :id, :first_name, :last_name, :email, :street_address, :location_id, :phone_number, :bio, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
