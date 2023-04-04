class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :description
      t.integer :price
      t.string :size

      t.timestamps
    end
  end
end
