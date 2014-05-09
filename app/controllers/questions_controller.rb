class QuestionsController < InheritedResources::Base
	def history
		@question = Question.find(params[:id])
	end
end
