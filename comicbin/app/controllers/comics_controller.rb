class ComicsController < ApplicationController

	def index
		@comics = Comic.all
		render 'index'
	end

	def new
		render 'new'
	end

	def show
    	comic_id = params["id"]
    	@comic = Comic.find_by :id => comic_id
    	puts @comic.title
    	render 'show'
  	end

end
