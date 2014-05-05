class Answer < ActiveRecord::Base
  has_paper_trail
  attr_accessible :description, :question_id
  belongs_to :question
end
