class Outfit < ApplicationRecord
  belongs_to :user
  has_many :items, through: :user
end
