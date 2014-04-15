class Subject < ActiveRecord::Base
  attr_accessible :title, :name, :klass_id
  belongs_to :klass

  validates_presence_of :klass_id
  validates_uniqueness_of :name, :scope => :klass_id
end
