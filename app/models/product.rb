class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :category
  belongs_to :condition
  has_many :orders, dependent: :destroy
  belongs_to :seller
  has_many :wishlists, dependent: :destroy
  has_many_attached :photos, dependent: :destroy
end
