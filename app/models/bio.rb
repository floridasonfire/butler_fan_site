class Bio < ActiveRecord::Base

  validates :name, :presence => true
  validates :content, :presence => true
  validates :url, :presence => true

end
