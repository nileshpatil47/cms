class Subject < ActiveRecord::Base
	has_paper_trail
  attr_accessible :title, :name, :klass_id
  belongs_to :klass
  has_many :chapters

  validates_presence_of :klass_id
  validates_uniqueness_of :name, :scope => :klass_id
end
