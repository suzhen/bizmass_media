class AddTopToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :top, :boolean , :default => false
  end
end
