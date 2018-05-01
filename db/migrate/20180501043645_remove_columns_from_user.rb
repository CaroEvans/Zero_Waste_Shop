class RemoveColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :street_address, :string
    remove_column :users, :location_id, :string
    remove_column :users, :phone_number, :string
    remove_column :users, :bio, :string
  end
end
