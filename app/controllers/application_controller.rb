class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  def authorized(user) 
    if user.id == session[:user_id]
      true
    else
      redirect_to '/login'
    end
  end
end
