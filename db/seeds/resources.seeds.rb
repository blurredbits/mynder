after :locations do
  location = Location.first

  data = [
    { location: location, name: "8 Person Conference Room" }
  ]

  data.each do |filter|
    Resource.where(filter).first_or_create
  end
end