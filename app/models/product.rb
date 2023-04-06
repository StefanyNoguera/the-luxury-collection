class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :category
  belongs_to :condition
  has_one :order, dependent: :destroy
  belongs_to :seller
  has_many :wishlists, dependent: :destroy
end
