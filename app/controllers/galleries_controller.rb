class GalleriesController < ApplicationController

  before_action :find_gallery, only: [:show]
  before_action :require_user, only: [:new, :create]
  def index
    @galleries = Gallery.all
  end

  def show
    @photos = @gallery.photos
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
