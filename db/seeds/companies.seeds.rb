data = [
  { company_name: "Co Derp Derp" }
]

data.each do |filter|
  Company.where(filter).first_or_create!
end
