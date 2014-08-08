class Member < ActiveRecord::Base

  has_many :memberships
  has_many :locations, through: :memberships

  has_many :contact_points, as: :contactable
  
end