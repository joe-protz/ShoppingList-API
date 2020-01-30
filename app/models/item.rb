class Item < ApplicationRecord
  belongs_to :user
  validates :name,
    presence: true
  validates :quantity,
  numericality: { only_integer: true }
end
