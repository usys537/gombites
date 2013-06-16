class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
  helper_method :forem_user

  protect_from_forgery
end
