class Product < ApplicationRecord
  belongs_to :user
  scope :carted, -> {where(status:"Carted")}
  scope :completed, -> {where(status:"Completed")}
end
