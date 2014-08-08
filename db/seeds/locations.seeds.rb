after :companies do
  company = Company.first

  data = [
    { company: company, name: "Co-derp EAST" }
  ]

  data.each do |filter|
    Location.where(filter).first_or_create!
  end
end
