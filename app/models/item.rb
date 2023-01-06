class Item < ApplicationRecord
  belongs_to :closet
  belongs_to :category
  has_many :outfit_items
end
