class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.float :price
      t.integer :stock_level
      t.text :description
      t.references :category, foreign_key: true
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
