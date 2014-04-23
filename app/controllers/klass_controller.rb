class KlassController < ApplicationController
	add_breadcrumb "home", :root_path
	
	def index
		@klasses = Klass.all
		add_breadcrumb "class", klass_path
	end

	def show
		@klass = Klass.find(params[:id])
	end
end
