module Api::V1
    class ApiController < ActionController::API
        acts_as_token_authentication_handler_for User
        before_action :require_authentication!

        private
        def require_authentication!
            throw(:warden, scope: :user) unless current_user.presence
        end
    end
end