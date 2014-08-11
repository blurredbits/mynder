require 'spec_helper'

describe ApiConstraints do

  let (:api_constraints_v1) { ApiConstraints.new(version: 1) }

  describe "matches?" do
    it "returns true when the version matches the 'Accept' header" do
      request = double(host: 'api.mynder.dev', headers: {"Accept" => "application/vnd.mynder.v1"})
      api_constraints_v1.matches?(request).should be_true
    end
  end
  
end