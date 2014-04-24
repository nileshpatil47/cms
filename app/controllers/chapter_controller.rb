class ChapterController < ApplicationController
	add_breadcrumb "home", :root_path
	add_breadcrumb "class", :klass_path

	def show
		@chapter = Chapter.find(params[:id])
		add_breadcrumb @chapter.subject.klass.name, klas_path(@chapter.subject.klass)
		add_breadcrumb @chapter.subject.name, subject_path
		add_breadcrumb @chapter.name, chapter_path
	end
end
