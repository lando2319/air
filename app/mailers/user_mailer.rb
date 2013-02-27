class UserMailer < ActionMailer::Base
  default from: "notifications@onewayair.com"

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: "Welcome to the best site ever!")
  end
end
