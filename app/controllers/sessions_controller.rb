class SessionsController < ApplicationController
   skip_before_action :verify_authenticity_token
  def new
  end
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/home'
    else
      redirect_to '/login'
      end
  end

  def login
  end

  def logout
    session[:user_id] = nil
    render json: {logged_out: true}
  end


  def welcome
  end
end
