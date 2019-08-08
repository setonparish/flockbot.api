module Api
  class UsersController < ApiController
    def ping
      render json: {}, status: 200
    end
  end
end