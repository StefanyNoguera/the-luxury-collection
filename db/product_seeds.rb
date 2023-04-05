# PRODUCT SEEDS
puts "Cleaning Products..."
Product.destroy_all

puts "Creating Products..."
Product.create(
  name: "Vintage Gucci Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.first.id
)

puts "Finished creating #{Product.count} Products..."
# PRODUCT SEEDS
