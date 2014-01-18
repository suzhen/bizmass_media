class AddWholeToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :whole, :boolean,:default=>false
  end
end
