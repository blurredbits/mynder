after :calendars do
  calendar = Calendar.first 
  
  data = [
    { calendar: calendar, name: "Dance Party" }
  ]

  data.each do |filter|
    Event.where(filter).first_or_create!
  end
end