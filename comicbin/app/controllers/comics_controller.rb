class ComicsController < ApplicationController

	def index
    #order comics so that newly added ones are first
		@comics = Comic.all.order("id desc")
		render 'index'
	end

	def new
		@comic = Comic.new
		render 'new'
	end

	def show
   	comic_id = params[:id]
   	@comic = Comic.find_by :id => comic_id
   	render 'show'
  end

  def create
  	@comic = Comic.new
  	@comic.title = params[:title]
  	@comic.description = params[:description]
  	@comic.image_url = params[:image_url]
  	@comic.save

  	redirect_to '/comics/'+@comic.id.to_s
  end

  def delete
   	comic_id = params[:id]
   	@comic = Comic.find_by :id => comic_id
  	@comic.destroy

  	redirect_to '/comics'
  end


end
