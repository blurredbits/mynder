after :locations do    
  location = Location.first

  data = [
    { location: location, name: "Supreme Overload" }
  ]

  data.each do |filter|
    Manager.where(filter).first_or_create
  end
end