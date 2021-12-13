# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

weber = { 
  index: 0,
  picture: 'https://i.pravatar.cc/200?u=5f1b3f4b7917ef26107bd58c', 
  age: 37,
  eye_color: 'brown', 
  name: 'Weber Stein', 
  company: 'VIAGRAND', 
  email: 'weber.stein@viagrand.ca',
  phone: '+1 (866) 533-3564',
  greeting: "Hello, Weber! You have 9 unread messages."
}

User.create!(weber)

patti = {
  index: 0,
  picture: 'https://i.pravatar.cc/200?u=5f1d7f3e8882c9c811b111ce', 
  age: 23,
  eye_color: 'green', 
  name: 'Patti Mckenzie', 
  company: 'DAISU', 
  email: 'pattimckenzie@daisu.com', 
  phone: '+1 (960) 566-3327',
  greeting: 'Hello, Patti Mckenzie! You have 2 unread messages.'
}

User.create!(patti)