# PRODUCT SEEDS

puts "Cleaning Products..."
Product.destroy_all
puts "Creating Products..."

# CREATE 2 PRODUCTS FOR EACH CATEGORY FOR THE FIRST USER
Product.create(
  name: "Vintage Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "Vintage Bag",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton bag in very good condition. Comes with dust bag.",
  price: 800,
  size: "N/A",
  condition_id: Condition.find_by(name: "Very Good").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "New High Heel",
  brand: "Rick Owens",
  description: "New Rick Owens High Heel. Comes with box and dust bag.",
  price: 1700,
  size: "37",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "Used High Heel",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood High Heel. Comes with box and dust bag.",
  price: 500,
  size: "37",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "Vintage Trouser",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Trouser in excellent condition. Comes with box and dust bag.",
  price: 700,
  size: "S",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "Very Used Skirt",
  brand: "Gucci",
  description: "Very Used Gucci Skirt in fair condition. Comes with box and dust bag.",
  price: 200,
  size: "M",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "New Sheer Shirt",
  brand: "Rick Owens",
  description: "New Rick Owens Sheer Shirt. Comes with box and dust bag.",
  price: 200,
  size: "L",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "Used Blouse",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Blouse. Comes with box and dust bag.",
  price: 300,
  size: "L",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "Vintage Necklace",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Necklace in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.first.id
)

Product.create(
  name: "Very Used Earrings",
  brand: "Gucci",
  description: "Very Used Gucci Earrings in fair condition. Comes with box and dust bag.",
  price: 100,
  size: "N/A",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.first.id
)

puts "Finished creating #{Product.count} Products..."

# CREATE 2 PRODUCTS FOR EACH CATEGORY FOR THE SECOND USER
Product.create(
  name: "Vintage Blue Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "Vintage Red Bag",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton bag in very good condition. Comes with dust bag.",
  price: 800,
  size: "N/A",
  condition_id: Condition.find_by(name: "Very Good").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "New Black High Heel",
  brand: "Rick Owens",
  description: "New Rick Owens High Heel. Comes with box and dust bag.",
  price: 1700,
  size: "37",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "Used Red High Heel",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood High Heel. Comes with box and dust bag.",
  price: 500,
  size: "37",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "Vintage Black Trouser",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Trouser in excellent condition. Comes with box and dust bag.",
  price: 700,
  size: "S",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "Very Used Black Skirt",
  brand: "Gucci",
  description: "Very Used Gucci Skirt in fair condition. Comes with box and dust bag.",
  price: 200,
  size: "M",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "New White Sheer Shirt",
  brand: "Rick Owens",
  description: "New Rick Owens Sheer Shirt. Comes with box and dust bag.",
  price: 200,
  size: "L",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "Used White Blouse",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Blouse. Comes with box and dust bag.",
  price: 300,
  size: "L",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "Vintage Necklace",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Necklace in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.second.id
)

Product.create(
  name: "Vintage Earrings",
  brand: "Gucci",
  description: "Vintage Gucci Earrings in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.second.id
)
puts "Finished creating #{Product.count} Products..."

# CREATE 2 PRODUCTS FOR EACH CATEGORY FOR THE THIRD USER
Product.create(
  name: "Vintage Blue Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "Vintage Red Bag",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton bag in very good condition. Comes with dust bag.",
  price: 800,
  size: "N/A",
  condition_id: Condition.find_by(name: "Very Good").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "New Black High Heel",
  brand: "Rick Owens",
  description: "New Rick Owens High Heel. Comes with box and dust bag.",
  price: 1700,
  size: "37",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "Used Red Sneaker",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Sneaker. Comes with box and dust bag.",
  price: 500,
  size: "36",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "Vintage Black Trouser",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Trouser in excellent condition. Comes with box and dust bag.",
  price: 700,
  size: "S",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "Very Used Black Skirt",
  brand: "Gucci",
  description: "Very Used Gucci Skirt in fair condition. Comes with box and dust bag.",
  price: 200,
  size: "M",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "New White Sheer Shirt",
  brand: "Rick Owens",
  description: "New Rick Owens Sheer Shirt. Comes with box and dust bag.",
  price: 200,
  size: "L",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "Used White Blouse",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Blouse. Comes with box and dust bag.",
  price: 100,
  size: "L",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "Vintage Necklace",
  brand: "Vivienne Westwood",
  description: "Vintage Vivienne Westwood Necklace in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.third.id
)

Product.create(
  name: "Vintage Earrings",
  brand: "Gucci",
  description: "Vintage Gucci Earrings in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.third.id
)
puts "Finished creating #{Product.count} Products..."
# PRODUCT SEEDS
