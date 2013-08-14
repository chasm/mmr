class SessionController < ApplicationController
  def new
  end

  def create
    if user = User.find_by_email(params[:user][:email])
      if user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect_to root_url
      else
        render :new
      end
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end
end
