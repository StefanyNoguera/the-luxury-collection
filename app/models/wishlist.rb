class Wishlist < ApplicationRecord
  has_one :product, dependent: :destroy
  belongs_to :user
  belongs_to :product
end
