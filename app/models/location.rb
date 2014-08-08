class Location < ActiveRecord::Base

  belongs_to :company

  has_many :events
  has_many :resources
  has_many :managers
  has_many :services
  has_many :calendars

  has_many :addresses, as: :addressable
  has_many :contacts, as: :contactable
  
  has_many :memberships
  has_many :members, through: :memberships

end