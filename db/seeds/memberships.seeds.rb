after :locations && :members do
  location = Location.first
  member = Member.first

  data = [
    { location: location, member: member}
  ]

  data.each do |filter|
    Membership.where(filter).first_or_create!
  end
end