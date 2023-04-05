class Wishlist < ApplicationRecord
  has_one :product
  belongs_to :user
  belongs_to :product
end
