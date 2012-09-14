class Image < ActiveRecord::Base
  attr_accessible :data
  has_attached_file :data, :styles => { :medium => "300x300#", :large => "600x600>" }
end
