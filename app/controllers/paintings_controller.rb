class PaintingsController < ApplicationController
  def show
    @painting = Painting.find params[:id] || Painting.search_for(params[:q])
  end

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
    @artists = Artist.all
    @museums = Museum.all
  end

  def create
    safe_painting = params.require(:painting).permit(:title, :image_url, :artist_id, :museum_id)
    @painting = Painting.create safe_painting
    redirect_to @painting
  end


end
