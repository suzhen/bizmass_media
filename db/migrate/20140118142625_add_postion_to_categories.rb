class AddPostionToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :postion, :integer,:default=>0
  end
end
