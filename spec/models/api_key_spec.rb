require 'rails_helper'

RSpec.describe APIKey, :type => :model do
  
  it "generates an access_token upon create" do
    api_key = APIKey.create!
    expect(api_key.access_token).not_to be_nil 
  end
  
end
