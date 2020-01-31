class Item < ApplicationRecord
  belongs_to :list
  validates :name,
    presence: true
  validates :quantity,
  numericality: { only_integer: true }, :allow_nil => true
end
