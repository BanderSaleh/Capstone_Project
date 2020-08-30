class AddPictureToCompleted < ActiveRecord::Migration[6.0]
  def change
    add_column :completeds, :picture, :string
  end
end
