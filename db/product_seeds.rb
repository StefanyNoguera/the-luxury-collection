# PRODUCT SEEDS
require 'open-uri'
require 'uri'

puts "Cleaning Products..."
Product.destroy_all
puts "Creating Products..."

# CREATE 2 PRODUCTS FOR EACH CATEGORY FOR THE FIRST USER
product1 = Product.create(
  name: "Vintage Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462013/gucci_vintage_ulltag.jpg'
image_data = URI.open(image_url).read
product1.photos.attach(io: StringIO.new(image_data), filename: 'gucci-bag-1.png')

product2 = Product.create(
  name: "Vintage Bag",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton bag in very good condition. Comes with dust bag.",
  price: 800,
  size: "N/A",
  condition_id: Condition.find_by(name: "Very Good").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462160/vintage_louis_lo33gq.webp'
image_data = URI.open(image_url).read
product2.photos.attach(io: StringIO.new(image_data), filename: 'louis-bag-1.png')

product3 = Product.create(
  name: "New High Heel",
  brand: "Rick Owens",
  description: "New Rick Owens High Heel. Comes with box and dust bag.",
  price: 1700,
  size: "37",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462264/high_heel_rick_tgqztr.avif'
image_data = URI.open(image_url).read
product3.photos.attach(io: StringIO.new(image_data), filename: 'rick-heels-1.png')

product4 = Product.create(
  name: "Used High Heel",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood High Heel. Comes with box and dust bag.",
  price: 500,
  size: "37",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462371/vivienne_heel_xvwmp8.jpg'
image_data = URI.open(image_url).read
product4.photos.attach(io: StringIO.new(image_data), filename: 'vivienne-heels-1.png')

product5 = Product.create(
  name: "Vintage Trouser",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Trouser in excellent condition. Comes with box and dust bag.",
  price: 700,
  size: "S",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462463/louis-vuitton-vintage-flower-monogram-jogging-trousers-ready-to-wear--FNJP98SS6001_PM2_Front_view_oeql52.webp'
image_data = URI.open(image_url).read
product5.photos.attach(io: StringIO.new(image_data), filename: 'louis-trouser-1.png')

product6 = Product.create(
  name: "Very Used Skirt",
  brand: "Gucci",
  description: "Very Used Gucci Skirt in fair condition. Comes with box and dust bag.",
  price: 200,
  size: "M",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462548/713301XKCNA_M_GUC-2668.a_qc6aqq.jpg'
image_data = URI.open(image_url).read
product6.photos.attach(io: StringIO.new(image_data), filename: 'gucci-skirt-1.png')

product7 = Product.create(
  name: "New Sheer Shirt",
  brand: "Rick Owens",
  description: "New Rick Owens Sheer Shirt. Comes with box and dust bag.",
  price: 200,
  size: "L",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462648/rick-owens-Black-Sheer-Button-up-Shirt_elxmu7.webp'
image_data = URI.open(image_url).read
product7.photos.attach(io: StringIO.new(image_data), filename: 'rick-shirt-1.png')

product8 = Product.create(
  name: "Used Blouse",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Blouse. Comes with box and dust bag.",
  price: 300,
  size: "L",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462781/11010331W00HG_N401_4_jzzooo.jpg'
image_data = URI.open(image_url).read
product8.photos.attach(io: StringIO.new(image_data), filename: 'vivienne-shirt-1.png')

product9 = Product.create(
  name: "Vintage Necklace",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Necklace in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462873/louis-vuitton-b-blossom-pendant-pink-gold-white-gold-and-diamonds--Q93748_PM2_Front_view_cuqopt.webp'
image_data = URI.open(image_url).read
product9.photos.attach(io: StringIO.new(image_data), filename: 'louis-necklace-1.png')

product10 = Product.create(
  name: "Very Used Earrings",
  brand: "Gucci",
  description: "Very Used Gucci Earrings in fair condition. Comes with box and dust bag.",
  price: 100,
  size: "N/A",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.first.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682462959/ybd662111001_base_rj24fi.jpg'
image_data = URI.open(image_url).read
product10.photos.attach(io: StringIO.new(image_data), filename: 'gucci-earrings-1.png')

puts "Finished creating #{Product.count} Products..."

# CREATE 2 PRODUCTS FOR EACH CATEGORY FOR THE SECOND USER
product2 = Product.create(
  name: "Vintage Purple Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.second.id
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682461975/gucci_bag_bja2hc.jpg'
image_data = URI.open(image_url).read
product2.photos.attach(io: StringIO.new(image_data), filename: 'gucci-bag-2.png')


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
  name: "Very Used Yellow Skirt",
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
