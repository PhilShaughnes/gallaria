class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @photo = @gallery.photos.new(photo_params)
    if @photo.save
      redirect_to @gallery
    else
      render :new
    end
  end

  private

  def find_photo
    @photo = Photo.find(params[:id]) if params[:id]
  end

  def photo_params
    params.require(:photo).permit(:caption, :url)
  end
end
