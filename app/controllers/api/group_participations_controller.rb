module Api
  class GroupParticipationsController < ApiController
    def create
      client = Flockbot::Client.new
      group = client.groups.detect { |g| g.id == group_participation_params[:group_id] }
      status = group.add_user(first_name: group_participation_params[:user_first_name],
        last_name: group_participation_params[:user_last_name],
        email: group_participation_params[:user_email].presence,
        mobile_phone: group_participation_params[:user_mobile_phone].presence
      )
      render json: {}, status: 200
    end

    private

    def group_participation_params
      params.permit(:group_id, :user_first_name, :user_last_name, :user_email, :user_mobile_phone)
    end
  end
end