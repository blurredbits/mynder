after :locations do
  location = Location.first

  data = [
    { location: location, name: "Special Events" }
  ]

  data.each do |filter|
    Calendar.where(filter).first_or_create!
  end
  
end