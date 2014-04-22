class KlassController < ApplicationController
	def index
		@klass = Klass.all
	end
end
