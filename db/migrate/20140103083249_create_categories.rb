class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth # this is optional.
    end
    add_index :categories,:name
    add_index :categories,:parent_id
    add_index :categories,:lft
    add_index :categories,:rgt
  end
end
