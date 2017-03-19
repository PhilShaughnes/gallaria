class PhotosController < ApplicationController


  def show; end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @photo = Photo.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @photo = @gallery.user.photos.new(photo_params)
    if @photo.save
      @gallery.photos << @photo
      puts "*****************saved************************"
      p @photo
      p @photo.errors.full_messages
      puts "***************saved***************************"
      redirect_to @gallery
    else
      puts "*****************not_saved************************"
      p @photo
      p @photo.errors.full_messages
      puts "*************not_saved*****************************"
      render :new
    end
  end

  private

  def find_photo
    @photo = Photo.find(params[:id]) if params[:id]
  end

  def photo_params
    params.require(:photo).permit(:caption, :img)
  end
end
