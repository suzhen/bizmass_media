class AddTopToMaterials < ActiveRecord::Migration
   def change
    add_column :materials, :top, :boolean , :default => false
  end
end
