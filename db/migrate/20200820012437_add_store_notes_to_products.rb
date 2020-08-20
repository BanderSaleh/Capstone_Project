class AddStoreNotesToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :store_notes, :string
    add_column :products, :timestamp, :string
  end
end
