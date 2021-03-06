# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..1000).each do |x|
  WaitlistEntry.create(email: "waiting+#{x}@email.com")
end

tcelluser = User.create(email: "tcelluser@tcell.io", password: "testing.")


(1..10).each do |x|
  Widget.create(name: "Tcell User's Widget (#{x})", description: "A sample widget", stock: x, user: tcelluser)
end
