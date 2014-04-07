class AddRecommendToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :recommend, :boolean , :default => false
  end
end
