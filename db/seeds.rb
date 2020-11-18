# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Database..."
Restaurant.destroy_all

epicure = Restaurant.new(name: "Epicure", address: "11, rue des champs Elysees, 75001 Paris", phone_number: "01 34 12 23 35", category: "belgian")
le_46 = Restaurant.new(name: "1006", address: "46, Avenue de Longueil, 78500 Sartrouville", phone_number: "01 21 56 42 12", category: "french")
lamaccotte = Restaurant.new(name: "Lamaccotte", address: "7 Rue Saint-Denis, 44000 Nantes", phone_number: "02 85 37 42 30", category: "french")
sakura = Restaurant.new(name: "Sakura", address: "Avenue de Longueil, Sartrouville", phone_number: "01 34 12 23 35", category: "japanese")
pizza_pino = Restaurant.new(name: "Pizza Pino", address: "10B Rue Marcel Sembat, 33100 Bordeaux", phone_number: "05 56 32 92 92", category: "italian")

puts "Creating Restaurant Seeds..."

epicure.save!
puts "Created #{epicure.name}"
le_46.save!
puts "Created #{le_46.name}"
lamaccotte.save!
puts "Created #{lamaccotte.name}"
sakura.save!
puts "Created #{sakura.name}"
pizza_pino.save!
puts "Created #{pizza_pino.name}"


puts "Creating Review Seeds..."

yummy = Review.new(content: "yummy yummy", rating: 4)
yummy.restaurant = epicure  # Set foreign key restaurant_id
yummy.save!
epicure.reviews             # Should contain the yummy review
yummy.restaurant            # Should return the bristol restaurant
puts "Created Yummy"

bofbof = Review.new(content: "Peut mieux faire", rating: 1)
bofbof.restaurant = sakura  # Set foreign key restaurant_id
bofbof.save!
epicure.reviews             # Should contain the yummy review
bofbof.restaurant            # Should return the bristol restaurant
puts "Created BofBof"


puts "Finished!"

