class PhotosController < ApplicationController

  before_action :find_photo, only: [:show, :destroy]
  before_action :find_gallery, only: [:new, :create, :destroy]
  before_action :require_user, only: [:new, :create, :destroy]

  def show

  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = @gallery.user.photos.new(photo_params)
    if @photo.save
      @gallery.photos << @photo
      if params[:photo][:more] != "0"
         redirect_to(new_gallery_photo_path(@gallery))
       else
         redirect_to(@gallery)
       end

    else
      puts "*****************not_saved************************"
      p @photo
      p @photo.errors.full_messages
      puts "*************not_saved*****************************"
      render :new
    end
  end

  def destroy #removes the photo from the gallery. only destorys it if it's the last one.
    Photoing.where(photo: @photo, gallery: @gallery).first.destroy
    @photo.destroy if @photo.galleries.empty?
    redirect_to gallery_path(params[:gallery_id])
  end

  private

  def find_photo
    @photo = Photo.find(params[:id]) if params[:id]
  end

  def find_gallery
    @gallery = Gallery.find(params[:gallery_id]) if params[:gallery_id]
  end

  def photo_params
    params.require(:photo).permit(:caption, :img)
  end
end
