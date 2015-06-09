# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fred = Teacher.create!(name:"fred", email:"fred@fred.com", password_digest:"blah")
fred.password = "fred"
fred.save!

bob = Teacher.create!(name:"bob", email:"bob@bob.com", password_digest:"blah")
bob.password = "bob"
bob.save!

larry = Teacher.create!(name:"larry", email:"larry@larry.com", password_digest:"blah")
larry.password = "larry"
larry.save!
