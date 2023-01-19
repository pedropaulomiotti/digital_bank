class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameter, if: :devise_controller?

    def configure_permitted_parameter
        devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :identification, :phone, :birthday])
    end
end
