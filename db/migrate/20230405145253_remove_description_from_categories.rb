class RemoveDescriptionFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :description
  end
end
