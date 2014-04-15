class Chapter < ActiveRecord::Base
  attr_accessible :title, :name, :description, :subject_id
  belongs_to :subject

  validates_presence_of :subject_id
  validates_uniqueness_of :name, :scope => :subject_id
end
