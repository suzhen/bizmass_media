class AddEffectToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :effect, :string , :default => "photo"
  end
end
