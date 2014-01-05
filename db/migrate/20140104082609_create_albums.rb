class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.references :category
      t.string :cover
      t.boolean :published,:default=>false
      t.datetime :published_at
      t.timestamps
    end
  end
end
