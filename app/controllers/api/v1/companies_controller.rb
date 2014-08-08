class API::V1::CompaniesController < API::V1::ApplicationController

  def index
    @companies = Company.all
    render json: @companies
  end

end