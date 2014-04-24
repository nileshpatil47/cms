class SubjectController < ApplicationController
	add_breadcrumb "home", :root_path
	add_breadcrumb "class", :klass_path

	def show
		@subject = Subject.find(params[:id])
		add_breadcrumb @subject.klass.name, klas_path(@subject.klass)
		add_breadcrumb @subject.name, subject_path
	end
end
