class Category < ActiveRecord::Base
  attr_accessible :name
  acts_as_nested_set
  attr_accessible :name, :parent_id
  validates_presence_of :name
  has_many :albums
end
