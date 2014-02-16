class Album < ActiveRecord::Base
  attr_accessible :name,:category_id,:cover,:effect,:top
  belongs_to :category
  validates :name,:category,:effect,:presence=>true
  mount_uploader :cover,CoverUploader
  has_many :materials, dependent: :destroy
  default_scope { order("top DESC").order("id DESC") }
end
