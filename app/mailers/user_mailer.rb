class UserMailer < ApplicationMailer

  def signup(user)
    @user = user
    mail(to: @user.email, subject: "welcome!")
  end

  def share(object, email)
    @object = object
    mail(to: email, subject: "check out this awesome #{@object.class.name}!")
  end

end
