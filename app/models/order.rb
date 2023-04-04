class Order < ApplicationRecord
  belogns_to :product
  belongs_to :user
end
