class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
    redirect_to problems_path
  end

  def destroy
  	reset_session
  	flash[:notice] = "You have been successfully logged out."
    redirect_to login_students_path
  end

end
