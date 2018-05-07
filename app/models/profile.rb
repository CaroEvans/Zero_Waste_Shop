class Profile < ApplicationRecord
  belongs_to :location
  belongs_to :user
  validates :street_address, :phone_number, :location_id, :image, presence: true
  validates :first_name, :last_name, format: {with: /\A[a-zA-Z]+\z/, message: "required and can only contain letters" }
  mount_uploader :image, ProfileImageUploader

  def full_name
    "#{first_name} #{last_name}"
  end

end
