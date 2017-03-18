class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = current_user.galleries.new(gallery_params)
    if @gallery.save
      redirect_to @gallery
    else
      render :new
    end
  end

  private

  def find_gallery
    @gallery = Gallery.find(params[:id]) if params[:id]
  end

  def gallery_params
    params.require(:gallery).permit(:name)
  end
end
