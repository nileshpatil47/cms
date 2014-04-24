class TopicController < ApplicationController
	add_breadcrumb "home", :root_path
	add_breadcrumb "class", :klass_path

	def show
		@topic = Topic.find(params[:id])
		add_breadcrumb @topic.chapter.subject.klass.name, klas_path(@topic.chapter.subject.klass)
		add_breadcrumb @topic.chapter.subject.name, subject_path(@topic.chapter.subject)
		add_breadcrumb @topic.chapter.name, chapter_path(@topic.chapter)
		add_breadcrumb @topic.name, topic_path
	end
end
