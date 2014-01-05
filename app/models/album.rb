class Album < ActiveRecord::Base
  attr_accessible :name,:category_id,:cover
  belongs_to :category
  validates :name,:category,:presence=>true
  mount_uploader :cover,CoverUploader
  has_many :materials
end
