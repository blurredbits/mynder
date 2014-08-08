class API::V1::ApplicationController < ApplicationController::Base
  protect_from_forgery with: :null_session
end