class SessionsController < ApplicationController


  def create
    user = User.find_by_name(params[:name])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome back, #{user.name}"
      return
    end
    redirect_to sign_in_url, notice: "Nice try!"
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "See ya!"
  end
end
