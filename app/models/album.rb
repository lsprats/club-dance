class Album < ActiveRecord::Base

  has_many  :photos
  has_many  :events
  validates :name, :description, presence: true
  
end
