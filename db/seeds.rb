# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.create!(name: "Tops")
Item.create!(name: "Cactus Jack x Fragments T-Shirt", description: "testing testing", img_url: "https://image.goat.com/transform/v1/attachments/product_template_additional_pictures/images/058/121/659/original/802081_01.jpg.jpeg?action=crop&width=2000", category_id: 1)
