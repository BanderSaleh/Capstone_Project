class ChangeImageToPicture < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :image, :picture
  end
end
