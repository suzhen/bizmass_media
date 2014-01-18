class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.text :description
      t.string :image
      t.string :video
      t.string :poster
      t.references :album
      t.integer :position
      t.timestamps
    end
  end
end
