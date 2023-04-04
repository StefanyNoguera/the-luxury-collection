class AddForeignKeysToProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :category, foreign_key: true
    add_reference :products, :condition, foreign_key: true
    add_reference :products, :seller, foreign_key: true
  end
end
