class Manager < ActiveRecord::Base

  belongs_to :location
  has_many :contact_points, as: :contactable
  
end