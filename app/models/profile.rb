class Profile < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_one :user

  def full_name
    "#{first_name} #{last_name}"
  end

end
