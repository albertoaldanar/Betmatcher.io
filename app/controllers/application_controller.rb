class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :set_variables


    before_action :configure_permitted_parameters, if: :devise_controller?


     def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || pages_home_path
     end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end


  def set_variables
    @sports = Sport.all
    @country_football = Country.where(depor: "Football")
    @country_basketball = Country.where(depor: "Basketball")
    @country_tennis = Country.where(depor: "Tennis")
    @country_soccer = Country.where(depor: "Soccer")
    @country_fight = Country.where(depor: "Fight")
    @country_baseball = Country.where(depor: "Baseball")
  end

end
