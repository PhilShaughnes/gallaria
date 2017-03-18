class UserMailer < ApplicationMailer

  def signup(user)
    @user = user
    mail(to: @user.email, subject: "welcome!")
  end

  def share(gallery, email)
    @gallery = gallery
    mail(to: email, subject: "check out this awesome gallery: #{@gallery.name}")
  end

end
