class ApplicationController < ActionController::Base
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :firstname, :lastname, :email, :password, :current_password])
    end 

    def require_admin
        # depending on your auth, something like...
        redirect_to root_path unless current_admin
      end
end
