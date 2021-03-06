class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes
  has_many :comments
  has_many :tags
#add comments for testing git
  accepts_nested_attributes_for :tags, :allow_destroy => true, :reject_if => proc { |attrs| attrs.all? {|k,v|v.blank? }}
end
