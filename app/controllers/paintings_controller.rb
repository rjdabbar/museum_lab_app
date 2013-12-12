class PaintingsController < ApplicationController
  def show
    @painting = Painting.find params[:id] || Painting.search_for(params[:q])
  end

  def index
    @paintings = Painting.all
  end

end
