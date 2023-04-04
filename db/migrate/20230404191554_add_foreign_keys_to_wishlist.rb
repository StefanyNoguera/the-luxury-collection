class AddForeignKeysToWishlist < ActiveRecord::Migration[7.0]
  def change
    add_reference :wishlists, :user, foreign_key: true
    add_reference :wishlists, :product, foreign_key: true
  end
end
