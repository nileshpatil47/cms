class ChapterController < ApplicationController
	def show
		@chapter = Chapter.find(params[:id])
	end
end
