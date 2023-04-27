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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552335/vintage%20bag/bag_1_lje7ik.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552334/vintage%20bag/bag_2_p3mpzv.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552334/vintage%20bag/bag_3_d8gp6u.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552334/vintage%20bag/bag_4_quyscs.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product1.photos.attach(io: StringIO.new(image_data), filename: "gucci-bag-#{index + 1}.png")
end

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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555712/bag/bag_1_jennhh.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555711/bag/bag_2_jpjqjy.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555711/bag/bag_3_xafev8.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555711/bag/bag_4_ss5fgv.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555712/bag/bag_5_b7nkun.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product2.photos.attach(io: StringIO.new(image_data), filename: "louis-bag-#{index + 1}.png")
end

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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616043/black%20high%20heel/b_heel_1_e3tzi7.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616043/black%20high%20heel/b_heel_2_myvtjh.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616043/black%20high%20heel/b_heel_3_vytu5z.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616043/black%20high%20heel/b_heel_4_vkgb6p.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product3.photos.attach(io: StringIO.new(image_data), filename: "rick-owens-heel-#{index + 1}.png")
end

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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617878/heel/heel_1_vz5olr.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617878/heel/heel_2_oscphf.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617878/heel/heel_3_zv9vgj.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617878/heel/heel_4_mpoi3f.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product4.photos.attach(io: StringIO.new(image_data), filename: "vivienne-heel-#{index + 1}.png")
end

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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554854/trouser/tr_2_xmc1og.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554854/trouser/tr_1_oasarn.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554854/trouser/tr_3_bm4e5n.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554854/trouser/tr_4_oidgap.webp",
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product5.photos.attach(io: StringIO.new(image_data), filename: "louis-trouser-#{index + 1}.png")
end

g_skirt = Product.create(
  name: "Very Used Skirt",
  brand: "Gucci",
  description: "Very Used Gucci Skirt in fair condition. Comes with box and dust bag.",
  price: 200,
  size: "M",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.first.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551834/skirt/skirt_1_mpwpvs.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551834/skirt/skirt_2_n7ix2g.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551834/skirt/skirt_3_f1nf0i.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551834/skirt/skirt_4_a0x7sj.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  g_skirt.photos.attach(io: StringIO.new(image_data), filename: "gucci-skirt-#{index + 1}.png")
end

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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616191/sheer%20shirt/sheer_1_nnhspb.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616191/sheer%20shirt/aheer_2_bthfuj.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616191/sheer%20shirt/sheer_3_eztgok.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616191/sheer%20shirt/sheer_4_t2kp5l.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product7.photos.attach(io: StringIO.new(image_data), filename: "rick-sheer-#{index + 1}.png")
end

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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617956/blouse/blouse_1_se75zi.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617956/blouse/blouse_2_tqcz0s.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617956/blouse/blouse_3_w4xocn.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682617956/blouse/blouse_4_unnp7w.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product8.photos.attach(io: StringIO.new(image_data), filename: "vivienne-blouse-#{index + 1}.png")
end

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
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554997/necklace/necklace_1_msxi6o.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554997/necklace/necklace_2_lk331q.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554997/necklace/necklace_3_yoqtzx.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554998/necklace/neck_lace_4_pug50y.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554998/necklace/necklace_5_yd1ugh.webp"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  product9.photos.attach(io: StringIO.new(image_data), filename: "louis-necklace-#{index + 1}.png")
end

g_earrings = Product.create(
  name: "Very Used Earrings",
  brand: "Gucci",
  description: "Very Used Gucci Earrings in fair condition. Comes with box and dust bag.",
  price: 100,
  size: "N/A",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.first.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551551/earrings/earrings_1_opjulm.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551551/earrings/earrings_2_y9e3u3.avif",
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  g_earrings.photos.attach(io: StringIO.new(image_data), filename: "gucci-earrings-#{index + 1}")
end

puts "Finished creating #{Product.count} Products..."

# CREATE 2 PRODUCTS FOR EACH CATEGORY FOR THE SECOND USER
purple_bag = Product.create(
  name: "Vintage Purple Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551170/purple_bag_1_pk9dpv.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551170/purple_bag_2_ddepiy.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551170/purple_bag_3_szr2pj.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551170/purple_bag_4_zcfhwc.avif",
]
image_urls.each do |image_url|
  image_data = URI.open(image_url).read
  purple_bag.photos.attach(io: StringIO.new(image_data), filename: "purple-bag-#{index + 1}.png")
end

l_bag_pink = Product.create(
  name: "Vintage Pink Bag",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton bag in very good condition. Comes with dust bag.",
  price: 800,
  size: "N/A",
  condition_id: Condition.find_by(name: "Very Good").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682553876/red%20bag/p_bag_1_mdqph6.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682553877/red%20bag/p_bag_2_cizflp.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682553876/red%20bag/p_bag_3_sbxb2i.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682553876/red%20bag/p_bag_4_i49lrv.avif",
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  l_bag_pink.photos.attach(io: StringIO.new(image_data), filename: "l-bag-pink-#{index + 1}.png")
end

r_white_heel = Product.create(
  name: "New White High Heel",
  brand: "Rick Owens",
  description: "New Rick Owens High Heel. Comes with box and dust bag.",
  price: 1700,
  size: "37",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616313/white%20high%20heel/white_h_1_l42pnd.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616314/white%20high%20heel/white_h_2_fq2u7j.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616314/white%20high%20heel/white_h_3_to1zby.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616314/white%20high%20heel/white_h_4_mobook.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  r_white_heel.photos.attach(io: StringIO.new(image_data), filename: "r-white-heel-#{index + 1}.png")
end

red_heel_vivi = Product.create(
  name: "Used Red High Heel",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood High Heel. Comes with box and dust bag.",
  price: 500,
  size: "37",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618069/red%20heel/red_h_1_jhyxry.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618069/red%20heel/red_h_2_toht7r.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618069/red%20heel/red_h_3_bdd2gw.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618070/red%20heel/red_h_4_zcxmrm.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  red_heel_vivi.photos.attach(io: StringIO.new(image_data), filename: "red-heel-vivi-#{index + 1}.png")
end

l_black_trouser = Product.create(
  name: "Vintage Black Trouser",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Trouser in excellent condition. Comes with box and dust bag.",
  price: 700,
  size: "S",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554711/black%20trouser/tr_1_tvouyt.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554711/black%20trouser/tr_2_v7uu7w.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554711/black%20trouser/tr_3_n0mahe.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554711/black%20trouser/tr_4_ayzhhz.webp"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  l_black_trouser.photos.attach(io: StringIO.new(image_data), filename: "l-black-trouser-#{index + 1}.png")
end

black_skirt = Product.create(
  name: "Very Used Black Skirt",
  brand: "Gucci",
  description: "Very Used Gucci Skirt in fair condition. Comes with box and dust bag.",
  price: 200,
  size: "M",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551392/black%20skirt/b_skirt_1_hsabjr.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551391/black%20skirt/b_skirt_2_yz7p52.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551391/black%20skirt/b_skirt_3_xg1hl4.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551392/black%20skirt/b_skirt_4_fz13fb.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682551392/black%20skirt/b_skirt_5_ekmzzn.avif",
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  black_skirt.photos.attach(io: StringIO.new(image_data), filename: "black-skirt-#{index + 1}.png")
end

w_shirt_rick = Product.create(
  name: "New White  Shirt",
  brand: "Rick Owens",
  description: "New Rick Owens  Shirt. Comes with box and dust bag.",
  price: 200,
  size: "L",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616397/white%20sheer%20shirt/w_sheer_1_xameuj.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616397/white%20sheer%20shirt/w_sheer_2_nfsd9u.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616397/white%20sheer%20shirt/w_aheer_3_avubd8.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616397/white%20sheer%20shirt/w_sheer_4_gnfvfc.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  w_shirt_rick.photos.attach(io: StringIO.new(image_data), filename: "w-shirt-rick-#{index + 1}.png")
end

w_bl_vivi = Product.create(
  name: "Used White Blouse",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Blouse. Comes with box and dust bag.",
  price: 300,
  size: "L",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618126/white%20blouse/w_bl_1_gqn1o5.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618126/white%20blouse/w_bl_2_awygsz.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618127/white%20blouse/w_bl_3_p334jq.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618126/white%20blouse/w_bl_4_x7xaun.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  w_bl_vivi.photos.attach(io: StringIO.new(image_data), filename: "w-bl-vivi-#{index + 1}.png")
end

l_necklace_2 = Product.create(
  name: "Vintage Necklace",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Necklace in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555152/necklace%202/neck_1_csmmsa.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555152/necklace%202/neck_2_arrgdb.webp"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  l_necklace_2.photos.attach(io: StringIO.new(image_data), filename: "l-necklace-2-#{index + 1}.png")
end

g_earrings_2 = Product.create(
  name: "Vintage Earrings",
  brand: "Gucci",
  description: "Vintage Gucci Earrings in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.second.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552153/earrings%202/earrings_2_1_ixmcua.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552153/earrings%202/earrings_22_wqttxk.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552153/earrings%202/earrings_2_3_axucim.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  g_earrings_2.photos.attach(io: StringIO.new(image_data), filename: "earrings-2-#{index + 1}.png")
end

puts "Finished creating #{Product.count} Products..."

# CREATE 2 PRODUCTS FOR EACH CATEGORY FOR THE THIRD USER
blue_bag = Product.create(
  name: "Vintage Blue Bag",
  brand: "Gucci",
  description: "Vintage Gucci bag in excellent condition. Comes with dust bag.",
  price: 1000,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682548628/blue%20bag/blue_bag_1_paumyq.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682548628/blue%20bag/blue_bag_2_n0qpci.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682548628/blue%20bag/blue_bag_3_lf52s4.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682548628/blue%20bag/blue_bag_4_qjnnhy.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  blue_bag.photos.attach(io: StringIO.new(image_data), filename: "blue-bag-#{index + 1}.png")
end

l_bag_orange = Product.create(
  name: "Vintage Orange Bag",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton bag in very good condition. Comes with dust bag.",
  price: 800,
  size: "N/A",
  condition_id: Condition.find_by(name: "Very Good").id,
  category_id: Category.find_by(name: "Bags").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555474/orange%20bag/o_bag_1_sooerc.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555474/orange%20bag/o_bag_2_woh4vb.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555474/orange%20bag/o_bag_3_chac6g.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682555473/orange%20bag/o_bag_4_v1rcqs.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  l_bag_orange.photos.attach(io: StringIO.new(image_data), filename: "l-bag-orange-#{index + 1}.png")
end

yellow_heels = Product.create(
  name: "New Yellow High Heel",
  brand: "Rick Owens",
  description: "New Rick Owens High Heel. Comes with box and dust bag.",
  price: 1700,
  size: "37",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616518/high%20heel/high_heel_1_xmclnd.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616518/high%20heel/high_heel_2_ragi2d.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616518/high%20heel/high_heel_3_ggeyy8.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616518/high%20heel/high_heel_4_hi4smf.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  yellow_heels.photos.attach(io: StringIO.new(image_data), filename: "yellow-heels-#{index + 1}.png")
end

r_sneak = Product.create(
  name: "Used Red Sneaker",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Sneaker. Comes with box and dust bag.",
  price: 500,
  size: "36",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Shoes").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618206/red%20sneaker/red_s_1_hfglme.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618205/red%20sneaker/red_s_2_x7hb0o.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618206/red%20sneaker/red_s_4_knlubf.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  r_sneak.photos.attach(io: StringIO.new(image_data), filename: "r-sneak-#{index + 1}.png")
end

l_white_trouser = Product.create(
  name: "Vintage White Trouser",
  brand: "Louis Vuitton",
  description: "Vintage Louis Vuitton Trouser in excellent condition. Comes with box and dust bag.",
  price: 700,
  size: "S",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554558/white%20trouser/trouser_2_j2gnkg.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554558/white%20trouser/trouser_1_oymktb.webp",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554558/white%20trouser/trouser_4_teofyv.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682554558/white%20trouser/trouser_3_puqqc3.webp"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  l_white_trouser.photos.attach(io: StringIO.new(image_data), filename: "white-trouser-#{index + 1}.png")
end

yellow_skirt = Product.create(
  name: "Very Used Yellow Skirt",
  brand: "Gucci",
  description: "Very Used Gucci Skirt in fair condition. Comes with box and dust bag.",
  price: 200,
  size: "M",
  condition_id: Condition.find_by(name: "Fair").id,
  category_id: Category.find_by(name: "Bottoms").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682549646/yellow%20skirt/ye_skirt_1_bxbak1.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682549646/yellow%20skirt/ye_skirt_4_qpfofk.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682549646/yellow%20skirt/ye_skirt_2_fsuu9d.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682549646/yellow%20skirt/ye_skirt_3_txvu05.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682549646/yellow%20skirt/ye_skirt_5_jeo1b9.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  yellow_skirt.photos.attach(io: StringIO.new(image_data), filename: "yellow-skirt-#{index + 1}.png")
end

b_r_shirt = Product.create(
  name: "New Black Sheer Shirt",
  brand: "Rick Owens",
  description: "New Rick Owens Sheer Shirt. Comes with box and dust bag.",
  price: 200,
  size: "L",
  condition_id: Condition.find_by(name: "New").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616677/black%20sheer%20shirt/b_sheer_1_qogfo4.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616677/black%20sheer%20shirt/b_sheer_2_k08rot.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616677/black%20sheer%20shirt/b_sheer_3_ajtko9.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682616677/black%20sheer%20shirt/b_sheer_4_mdgoqn.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  b_r_shirt.photos.attach(io: StringIO.new(image_data), filename: "black-sheer-shirt-#{index + 1}.png")
end

p_blouse = Product.create(
  name: "Used Pink Blouse",
  brand: "Vivienne Westwood",
  description: "Used Vivienne Westwood Blouse. Comes with box and dust bag.",
  price: 100,
  size: "L",
  condition_id: Condition.find_by(name: "Good").id,
  category_id: Category.find_by(name: "Tops").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618285/pink%20blouse/p_bl_1_nfvkar.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618285/pink%20blouse/p_bl_2_poqotn.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618285/pink%20blouse/p_bl_3_d3wdxb.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  p_blouse.photos.attach(io: StringIO.new(image_data), filename: "pink-blouse-#{index + 1}.png")
end

neck_vivi = Product.create(
  name: "Vintage Necklace",
  brand: "Vivienne Westwood",
  description: "Vintage Vivienne Westwood Necklace in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618425/nck_vivi_1_ubz4d4.jpg",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682618421/nck_vivi_2_nt7d7d.jpg"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  neck_vivi.photos.attach(io: StringIO.new(image_data), filename: "vintage-necklace-#{index + 1}.png")
end

g_earrings_3 = Product.create(
  name: "Vintage Earrings",
  brand: "Gucci",
  description: "Vintage Gucci Earrings in excellent condition. Comes with box and dust bag.",
  price: 500,
  size: "N/A",
  condition_id: Condition.find_by(name: "Excellent").id,
  category_id: Category.find_by(name: "Jewelry").id,
  seller_id: Seller.third.id
)
image_urls = [
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552211/earrings%203/earrings_3_1_db2jxy.avif",
  "https://res.cloudinary.com/dwgembu1s/image/upload/v1682552211/earrings%203/earrings_3_2_pn2cqh.avif"
]
image_urls.each_with_index do |image_url, index|
  image_data = URI.open(image_url).read
  g_earrings_3.photos.attach(io: StringIO.new(image_data), filename: "g-earrings-3-#{index + 1}.png")
end

puts "Finished creating #{Product.count} Products..."
# PRODUCT SEEDS
