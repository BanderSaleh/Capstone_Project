class CreateCompleteds < ActiveRecord::Migration[6.0]
  def change
    create_table :completeds do |t|
      t.integer :UserID
      t.string :store_name
      t.string :product_name
      t.integer :quantity
      t.string :store_notes
      t.string :timestamp
      t.string :store_notes_timestamp
      t.integer :price
      t.string :deadline
      t.string :status
      t.string :picture

      t.timestamps
    
    end
  end
end
