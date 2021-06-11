# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CallCost.create(origin: "011", receiver: "016", price:1.90)
CallCost.create(origin: "016", receiver: "011", price:2.90)
CallCost.create(origin: "011", receiver: "017", price:1.70)
CallCost.create(origin: "017", receiver: "011", price:2.70)
CallCost.create(origin: "011", receiver: "018", price:0.90)
CallCost.create(origin: "018", receiver: "011", price:1.90)

Plan.create(name: "FaleMais 30", price: 10, minutes:30)
Plan.create(name: "FaleMais 60", price: 15, minutes:60)
Plan.create(name: "FaleMais 120", price: 25, minutes:120)
