class TopicsController < ApplicationController
	add_breadcrumb "home", :root_path
	add_breadcrumb "class", :klass_path

	def show
		@topic = Topic.find(params[:id])
		add_breadcrumb @topic.chapter.subject.klass.name, klas_path(@topic.chapter.subject.klass)
		add_breadcrumb @topic.chapter.subject.name, subject_path(@topic.chapter.subject)
		add_breadcrumb @topic.chapter.name, chapter_path(@topic.chapter)
		add_breadcrumb @topic.name, topic_path
	end

	def new
    @topic = Topic.new(:chapter_id => nil)

    respond_to do |format|
      format.html # new.html.erb
    end
	 end


	def create
    @topic = Topic.new(params[:topic])

    respond_to do |format|
      if @topic.save
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
	 end

	# GET /users/1/edit
	def edit
		@topic = Topic.find(params[:id])
	end

	def update
	    @topic = Topic.find(params[:id])

	    respond_to do |format|
	      if @topic.update_attributes(params[:topic])
	        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
	      else
	        format.html { render action: "edit" }
	      end
	    end
	end

	def history
		@topic = Topic.find(params[:id])
	end
end
