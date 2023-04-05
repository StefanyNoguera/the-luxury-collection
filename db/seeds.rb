# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning Users..."
User.destroy_all

puts "Creating Users..."

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create(
    first_name: first_name,
    last_name: last_name,
    username: "#{first_name.downcase}#{last_name.downcase}",
    email: "#{first_name.downcase}@gmail.com",
    password: "123456"
  )
end
puts "Finished creating #{User.count} Users..."

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

puts "Cleaning Categories..."
Category.destroy_all

puts "Creating Categories..."

Category.create(name: "Tops")
Category.create(name: "Bottoms")
Category.create(name: "Shoes")
Category.create(name: "Jewelry")
Category.create(name: "Bags")
puts "Finished creating #{Category.count} Categories..."
