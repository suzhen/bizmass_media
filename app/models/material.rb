class Material < ActiveRecord::Base
  attr_accessible :image, :description,:poster,:video,:album_id
  validates :album_id,:presence=>true
  mount_uploader :image,ImageUploader
  mount_uploader :video,VideoUploader
  mount_uploader :poster,PosterUploader
  belongs_to :album
  default_scope { order("id DESC") }
end
