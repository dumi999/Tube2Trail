class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def default_url_options
    { heroku: ENV["DOMAIN"] || "http://www.tube2trail.site" }
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    #devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
