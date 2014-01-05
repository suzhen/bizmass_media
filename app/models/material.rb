class Material < ActiveRecord::Base
  attr_accessible :image, :description, :video,:album_id
  validates :album_id,:presence=>true
  mount_uploader :image,ImageUploader
  mount_uploader :video,VideoUploader
  belongs_to :album
  default_scope { order("id DESC") }
end
