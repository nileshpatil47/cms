class Klass < ActiveRecord::Base
	has_paper_trail
  attr_accessible :title, :name
  has_many :subjects
end
