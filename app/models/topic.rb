class Topic < ActiveRecord::Base
	has_paper_trail
  # attr_accessible :title, :body
  attr_accessible :title, :name, :description, :chapter_id
  belongs_to :chapter
  has_many :questions
  validates_presence_of :chapter_id, :blank => true
end
