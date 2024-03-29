class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except=> [:show,:index]

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
