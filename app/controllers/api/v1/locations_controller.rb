class API::V1::LocationsController < API::V1::ApplicationController

  before_filter :restrict_access

  def index
    @locations = Location.all
    render json: @locations
  end

  private

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      APIKey.exists?(access_token: token)
    end
  end

end