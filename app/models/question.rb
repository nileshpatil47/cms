class Question < ActiveRecord::Base
  has_paper_trail
  attr_accessible :title, :topic_id
  belongs_to :topic
  has_many :answers
end
