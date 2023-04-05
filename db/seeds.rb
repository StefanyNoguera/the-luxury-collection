# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

# USERS SEEDS
puts "Cleaning Users..."
User.destroy_all

puts "Creating Users..."

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create(
    first_name: first_name,
    last_name: last_name,
    username: "#{first_name.downcase}#{last_name.downcase}",
    email: Faker::Internet.safe_email,
    password: "123456"
  )
  # file = URI.open('https://thispersondoesnotexist.com/image')
  # user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end
puts "Finished creating #{User.count} Users..."
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

User.limit(3).each do |user|
  Seller.create(
    description: Faker::Lorem.paragraph,
    user_id: user.id
  )
end
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

# ORDERS SEEDS
