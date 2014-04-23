class Topic < ActiveRecord::Base
	versioned
  # attr_accessible :title, :body
  attr_accessible :title, :name, :description, :chapter_id
  belongs_to :chapter

  validates_presence_of :chapter_id, :blank => true
end
