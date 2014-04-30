class Chapter < ActiveRecord::Base
	has_paper_trail
  attr_accessible :title, :name, :description, :subject_id
  belongs_to :subject
  has_many :topics

  validates_presence_of :subject_id
  validates_uniqueness_of :name, :scope => :subject_id
end
