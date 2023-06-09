# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# USERS SEEDS
require_relative 'user_seeds'
# USERS SEEDS

# CONDITIONS SEEDS

puts "Cleaning Conditions..."
Condition.destroy_all
puts "Creating Conditions..."

Condition.create(
  name: "Fair",
  description: "The item shows noticeable wear and tear, but is still usable and in decent condition."
)
Condition.create(
  name: "Good",
  description: "The item has some signs of wear, but is in overall good condition with no major flaws."
)
Condition.create(
  name: "Very Good",
  description: "The item has been gently used and well cared for, with only minor signs of wear."
)
Condition.create(
  name: "Excellent",
  description: "The item appears almost new, with minimal signs of wear and no major flaws."
)
Condition.create(
  name: "New",
  description: "The item has never been worn or used, and is in pristine condition."
)
puts "Finished creating #{Condition.count} Conditions..."
# CONDITIONS SEEDS

# CATEGORIES SEEDS

puts "Cleaning Categories..."
Category.destroy_all
puts "Creating Categories..."

Category.create(name: "Tops")
Category.create(name: "Bottoms")
Category.create(name: "Shoes")
Category.create(name: "Jewelry")
Category.create(name: "Bags")
puts "Finished creating #{Category.count} Categories..."
# CATEGORIES SEEDS

# SELLERS SEEDS
puts "Cleaning Sellers..."
Seller.destroy_all
puts "Creating Sellers..."

Seller.create(
  description: "Welcome to my little corner of luxury! Here you'll find carefully selected items that are the epitome of sophistication, elegance, and style. I'm passionate about bringing you the best of the best, and I hope you'll love what you find here.",
  user_id: User.find_by(first_name: "Stefany").id
)

Seller.create(
  description: "As a lover of all things luxurious, I've handpicked a selection of exquisite items that I know you'll adore. From high-end fashion to stunning jewelry, every piece in my collection is a testament to the beauty and quality of luxury goods.",
  user_id: User.find_by(first_name: "Alessio").id
)

Seller.create(
  description: "I believe that true luxury is all about the details, which is why I've curated a collection of the finest items that showcase the best craftsmanship and design. Every item I sell is something I would love to own myself, and I'm thrilled to share my passion for luxury with you.",
  user_id: User.find_by(first_name: "Yanett").id
)
puts "Finished creating #{Seller.count} Sellers..."
# SELLERS SEEDS

# PRODUCTS SEEDS
require_relative 'product_seeds'
# PRODUCTS SEEDS

# REVIEWS SEEDS
puts "Cleaning Reviews..."
Review.destroy_all
puts "Creating Reviews..."

Product.all.each do |product|
  3.times do
    Review.create(
      rating: rand(1..5),
      comment: Faker::Lorem.paragraph,
      product_id: product.id,
      user_id: User.all.sample.id
    )
  end
end
puts "Finished creating #{Review.count} Reviews..."
# REVIEWS SEEDS

# WISHLISTS SEEDS
puts "Cleaning Wishlists..."
Wishlist.destroy_all
puts "Creating Wishlists..."

User.all.each do |user|
  3.times do
    Wishlist.create(
      product_id: Product.all.sample.id,
      user_id: user.id
    )
  end
end
puts "Finished creating #{Wishlist.count} Wishlists..."
# WISHLISTS SEEDS

# # ORDERS SEEDS
# puts "Cleaning Orders..."
# Order.destroy_all
# puts "Creating Orders..."
# User.all.each do |user|
#   3.times do
#     Order.create(
#       product_id: Product.all.sample.id,
#       user_id: user.id
#     )
#   end
# end
# puts "Finished creating #{Order.count} Orders..."
# # ORDERS SEEDS
