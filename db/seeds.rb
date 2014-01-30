# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


products = []
products << Product.create(name: 'Table', price: '260.00', description: 'Wood')
products << Product.create(name: 'Chair', price: '80.75', description: 'Black')
products << Product.create(name: 'Bike', price: '148.00', description: 'Mountain Bike')
products << Product.create(name: 'Backpack', price: '53.00', description: 'Blue')

categories = []
categories << Category.create(name: 'Furniture')
categories << Category.create(name: 'Office Furniture')
categories << Category.create(name: 'School Supplies')
categories << Category.create(name: 'Office Supplies')

categories[0].products << products[0]
categories[0].products << products[1]

categories[1].products << products[0]
categories[1].products << products[1]

categories[2].products << products[0]
categories[2].products << products[1]
categories[2].products << products[2]
categories[2].products << products[3]

categories[3].products << products[0]
categories[3].products << products[1]

