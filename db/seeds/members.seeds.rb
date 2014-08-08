after :locations do   
  location = Location.first

  data = [
    { first_name: "Mark", last_name: "Morris" }
  ]

  data.each do |filter|
    Member.where(filter).first_or_create
  end
end