class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :category
  belongs_to :condition
  has_one :order
  belongs_to :seller
end
