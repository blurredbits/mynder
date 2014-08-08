class Company < ActiveRecord::Base

  after_create :generate_api_key

  has_one  :api_key
  has_many :locations
  has_many :contact_points, as: :contactable
  has_many :addresses, as: :addressable

  private

  def generate_api_key
    self.create_api_key!
  end

end
