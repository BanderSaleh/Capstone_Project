class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, do |t|
      t.integer :UserID
      t.string :store_name
      t.string :product_name
      t.integer :quantity
      t.integer :price
      t.string :deadline
      t.string :store_notes_timestamp
      t.string :status
      t.string :store_notes
      t.string :timestamp
      t.string :picture
      t.integer :user_id

      t.timestamps
    end      
  end


    
  end
end
