after :members do
  member = Member.first

  data = [
    { member: member, amount: 30000, currency: "USD", via: "VISA" }
  ]

  data.each do |filter|
    Payment.where(filter).first_or_create!
  end  
end