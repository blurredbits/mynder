class API::V1::LocationsController < ApplicationController

  #before_filter :restrict_access
  before_filter :fetch_location, except: [:create, :index]

  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    render json: @location, status: 200
  end

  def create
    location = Location.new(location_params)
    if location.save
      render json: location, status: 201, location: [:api, location]
    else
      render json: location.errors, status: 422
    end
  end

  def update
    if @location.update(location_params)
      render json: @location, status: 200, location: [:api, @location] 
    else
      render json: @location.errors, status: 422
    end
  end

  def destroy
    @location.destroy
    render nothing: true, status: 204
  end

  private

  def fetch_location
    @location = Location.find(params[:id])
  end

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      APIKey.exists?(access_token: token)
    end
  end

  def location_params
    params.require(:location).permit(:name)
  end

end