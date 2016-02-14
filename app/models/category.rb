class Category < ActiveRecord::Base
  has_many :photos
  validates_presence_of :content
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
