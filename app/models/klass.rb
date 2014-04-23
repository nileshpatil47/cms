class Klass < ActiveRecord::Base
	versioned
  attr_accessible :title, :name
  has_many :subjects
end
