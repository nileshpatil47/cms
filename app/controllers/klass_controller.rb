class KlassController < ApplicationController
	add_breadcrumb "home", :root_path
	
	def index
		logger.info params
		logger.info cookies

		@klasses = Klass.all
		add_breadcrumb "class", klass_path
	end

	def show
		@klass = Klass.find(params[:id])
		add_breadcrumb "class", klass_path
		add_breadcrumb @klass.name, klas_path(@klass)
	end
end
