class AnswersController < InheritedResources::Base
	def history
		@answer = Answer.find(params[:id])
	end
end
