class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :UserID
      t.string :store_name
      t.string :product_name
      t.integer :quantity
      t.integer :price
      t.string :deadline
      t.string :timestamp_store_notes
      t.string :status

      t.timestamps
    end
  end
end
