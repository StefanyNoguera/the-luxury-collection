require 'open-uri'
require 'uri'

puts "Cleaning Users..."
User.destroy_all
puts "Creating Users..."

luis = User.create(
  first_name: "Luis",
  last_name: "Noguera",
  username: "luisnoguera",
  email: "luis@gmail.com",
  password: "123456"
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682445788/luis_hdsovx.png'
image_data = URI.open(image_url).read
luis.photo.attach(io: StringIO.new(image_data), filename: 'luis_photo.png')
puts "Finished creating #{User.count} Users..."

stefany = User.create(
  first_name: "Stefany",
  last_name: "Noguera",
  username: "stefanynoguera",
  email: "stefany@gmail.com",
  password: "123456"
)
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682111192/development/c5nsfilherrcllxer9k1zvuzwih3.jpg'
image_data = URI.open(image_url).read
stefany.photo.attach(io: StringIO.new(image_data), filename: 'stefany_photo.png')
puts "Finished creating #{User.count} Users..."

alessio = User.create(
  first_name: "Alessio",
  last_name: "Ardila",
  username: "alessioardila",
  email: "alessio@gmail.com",
  password: "123456"
)
# alessio.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446266/alessio_zbqel4.jpg")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682446266/alessio_zbqel4.jpg'
image_data = URI.open(image_url).read
alessio.photo.attach(io: StringIO.new(image_data), filename: 'alessio_photo.png')
puts "Finished creating #{User.count} Users..."

yanett = User.create(
  first_name: "Yanett",
  last_name: "Rodriguez",
  username: "yanettrodriguez",
  email: "yanett@gmail.com",
  password: "123456"
)
# yanett.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446423/yanett_gq7lol.jpg")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682446423/yanett_gq7lol.jpg'
image_data = URI.open(image_url).read
yanett.photo.attach(io: StringIO.new(image_data), filename: 'yanett_photo.png')
puts "Finished creating #{User.count} Users..."

blanca = User.create(
  first_name: "Blanca",
  last_name: "Guzman",
  username: "blancaguzman",
  email: "blanca@gmail.com",
  password: "123456"
)
# blanca.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446529/blanca_kvmxq7.webp")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682446529/blanca_kvmxq7.webp'
image_data = URI.open(image_url).read
blanca.photo.attach(io: StringIO.new(image_data), filename: 'blanca_photo.png')
puts "Finished creating #{User.count} Users..."

isabella = User.create(
  first_name: "Isabella",
  last_name: "Gerratana",
  username: "isabellagerratana",
  email: "isabella@gmail.com",
  password: "123456"
)
# isabella.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446634/isabella_gefjao.jpg")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682446634/isabella_gefjao.jpg'
image_data = URI.open(image_url).read
isabella.photo.attach(io: StringIO.new(image_data), filename: 'isabella_photo.png')
puts "Finished creating #{User.count} Users..."

camila = User.create(
  first_name: "Camila",
  last_name: "Nicolay",
  username: "camilanicolay",
  email: "camila@gmail.com",
  password: "123456"
)
# camila.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446850/camila_tmrc6s.jpg")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682446850/camila_tmrc6s.jpg'
image_data = URI.open(image_url).read
camila.photo.attach(io: StringIO.new(image_data), filename: 'camila_photo.png')
puts "Finished creating #{User.count} Users..."

chaida = User.create(
  first_name: "Chaida",
  last_name: "Berndsen",
  username: "chaidaberndsen",
  email: "chaida@gmail.com",
  password: "123456"
)
# chaida.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446796/chaida_vs9nru.webp")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682446796/chaida_vs9nru.webp'
image_data = URI.open(image_url).read
chaida.photo.attach(io: StringIO.new(image_data), filename: 'chaida_photo.png')
puts "Finished creating #{User.count} Users..."

michelle = User.create(
  first_name: "Michelle",
  last_name: "Gastelum",
  username: "michellegastelum",
  email: "michelle@gmail.com",
  password: "123456"
)
# michelle.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682447021/michelle_bnqjxr.avif")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682447021/michelle_bnqjxr.avif'
image_data = URI.open(image_url).read
michelle.photo.attach(io: StringIO.new(image_data), filename: 'michelle_photo.png')
puts "Finished creating #{User.count} Users..."

daniela = User.create(
  first_name: "Daniela",
  last_name: "Villegas",
  username: "danielavillegas",
  email: "daniela@gmail.com",
  password: "123456"
)
# daniela.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682447158/daniela_jxtshq.avif")
image_url = 'https://res.cloudinary.com/dwgembu1s/image/upload/v1682447158/daniela_jxtshq.avif'
image_data = URI.open(image_url).read
daniela.photo.attach(io: StringIO.new(image_data), filename: 'daniela_photo.png')
puts "Finished creating #{User.count} Users..."
