class AddPosterToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :poster, :string
  end
end
