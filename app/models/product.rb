class Product < ApplicationRecord
  has_many :reviews
  has_one :seller
  has_one :category
  has_one :condition
  has_one :order
  belongs_to :seller
end
