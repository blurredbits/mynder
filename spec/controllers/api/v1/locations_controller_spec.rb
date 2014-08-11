require 'rails_helper'

RSpec.describe API::V1::LocationsController, :type => :controller do

  describe "GET #index" do
    it "assigns @locations" do
      location = Location.create
      get :index
      expect(assigns(:locations)).to eq([location])
    end

    it "responds with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "responds with a JSON content type" do
      get :index
      expect(response).to be_success
      expect(response.header['Content-Type']).to include('application/json')
    end

    it "responds with the proper number of locations" do
      location = Location.create
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe "GET show" do
    it "responds with an HTTP 200 status code" do
      location = Location.create
      get :show, { id: location.id }
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "POST #create" do
    it "responds with an HTTP 201 status code" do
      post :create, { format: 'json', location: { name: "OmniCorp"} }
      expect(response).to have_http_status(201)
    end

    it "responds with id of new location" do
      post :create, { format: 'json', location: { name: "OmniCorp"} }
      expect(response).to be_success
      expect(response.location).to eq(location_url(location[:api, :id]))
    end
  end

  # end

  # describe "PUT #update" do
  #   it "responds with an HTTP 200 status code" do
  #     location = Location.create({name: "OmniStore"})
  #     put :update, format: 'json', id: location.id, location: location.attributes = {name: "OmniCore"}
  #     expect(response).to be_success
  #     expect(response).to have_http_status(200)
  #   end
  # end

  describe "DELETE #destroy" do
    it "responds with an HTTP 200 status code" do
      location = Location.create
      delete :destroy, {format: 'json', id: location.id}
      expect(response).to be_success
      #
    end
  end

end