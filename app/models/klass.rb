class Klass < ActiveRecord::Base
  attr_accessible :title, :name
  has_many :subjects
end
