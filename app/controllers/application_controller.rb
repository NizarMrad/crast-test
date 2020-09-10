class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [profile_attributes: [:description, :skills, :linkedin_url, :age, :city, :user_id, :sector_id]])
    end
end