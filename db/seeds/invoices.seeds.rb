after :members do    
  member = Member.first

  data = [
    { member: member } 
  ]

  data.each do |filter|
    Invoice.where(filter).first_or_create
  end
  
end