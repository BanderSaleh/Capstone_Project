class RenameNotesToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :timestamp_store_notes, :store_notes_timestamp_
  end
end
