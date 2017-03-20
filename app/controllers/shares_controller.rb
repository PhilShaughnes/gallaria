class SharesController < ApplicationController

  def create

    @object = params[:photo_id] ? Photo.find(params[:photo_id]) : Gallery.find(params[:gallery_id])

    UserMailer.share(@object, params[:share][:email]).deliver
    redirect_back(fallback_location: root_path)
  end

end
