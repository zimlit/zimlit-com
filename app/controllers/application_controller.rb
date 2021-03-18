class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  def current_user
     render json: {current: User.find_by(id: session[:user_id])}; return
  end

  def logged_in?
    render json: {logged_in: !User.find_by(id: session[:user_id]).nil?};
  end
end
