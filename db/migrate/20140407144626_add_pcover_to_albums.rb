class AddPcoverToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :pcover, :string
  end
end
