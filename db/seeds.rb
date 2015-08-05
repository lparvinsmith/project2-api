# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(ljp jpl plj).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123', password_confirmation: 'abc123')
end

events = Event.create([
  {occurs_at: "2015-07-31", title:"RLLY COOL EVENT GUYS", venue:"some dev shop", description:"you'll like it tho", link:"here's a link", user_id:1},
  {occurs_at: "2015-07-31", title:"SRLSY COOL EVENT", venue:"some dev shop", description:"srsly tho the best event", link:"here's a link", user_id:2},
  {occurs_at: "2015-07-31", title:"LOTSA FREE SHIT", venue:"better dev shop", description:"like pizza n beer n tshirts n shit", link:"here's a link", user_id:3}
]);
