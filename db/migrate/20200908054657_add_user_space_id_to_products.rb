class AddUserSpaceIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :user_id, :string
  end
end
