class Item < ApplicationRecord
  belongs_to :closet
  belongs_to :category
end
