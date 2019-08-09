class ApiController < ApplicationController
  rescue_from Flockbot::TransactionError, with: :render_flockbot_error_response

  skip_before_action :verify_authenticity_token
  include BasicAuthentication

  def render_flockbot_error_response(exception)
    output = { error: exception.message }
    render json: output, status: :unprocessable_entity
  end
end
