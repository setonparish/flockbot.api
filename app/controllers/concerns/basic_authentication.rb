# app/controllers/concerns/http_auth_concern.rb
module BasicAuthentication
    extend ActiveSupport::Concern

    included do
      before_action :http_authenticate
    end

    def http_authenticate
      return true unless Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
          username == Rails.application.credentials.dig(:basic_auth, :user_name) &&
            password == Rails.application.credentials.dig(:basic_auth, :password)
      end
    end
end