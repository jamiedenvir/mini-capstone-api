# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.new({name: "Converse Chuck Taylor All Star Core Ox", price: 54.95, description: "The original basketball sneakers are now defined as a stylish modern-day fashion staple! The Converse® Chuck Taylor® All Star® Core Ox sneakers are a great complement to any casual ensemble.", image_url: "https://m.media-amazon.com/images/I/71ocGTmPYFL._AC_SR700,525_.jpg"})
product.save