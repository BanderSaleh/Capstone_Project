class ChangeProductType < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :user_id, :integer
  end
end
