module Api
  class GroupsController < ApiController
    def index
      groups = Flockbot::Client.new.groups
      output = groups.sort_by { |g| g.name }
      render json: output.map(&:to_json)
    end
  end
end