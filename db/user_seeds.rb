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
luis.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682445788/luis_hdsovx.png")

stefany = User.create(
  first_name: "Stefany",
  last_name: "Noguera",
  username: "stefanynoguera",
  email: "stefany@gmail.com",
  password: "123456"
)
stefany.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682111192/development/c5nsfilherrcllxer9k1zvuzwih3.jpg")

alessio = User.create(
  first_name: "Alessio",
  last_name: "Ardila",
  username: "alessioardila",
  email: "alessio@gmail.com",
  password: "123456"
)
alessio.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446266/alessio_zbqel4.jpg")

puts "Finished creating #{User.count} Users..."

yanett = User.create(
  first_name: "Yanett",
  last_name: "Rodriguez",
  username: "yanettrodriguez",
  email: "yanett@gmail.com",
  password: "123456"
)
yanett.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446423/yanett_gq7lol.jpg")

blanca = User.create(
  first_name: "Blanca",
  last_name: "Guzman",
  username: "blancaguzman",
  email: "blanca@gmail.com",
  password: "123456"
)
blanca.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446529/blanca_kvmxq7.webp")

isabella = User.create(
  first_name: "Isabella",
  last_name: "Gerratana",
  username: "isabellagerratana",
  email: "isabella@gmail.com",
  password: "123456"
)
isabella.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446634/isabella_gefjao.jpg")

camila = User.create(
  first_name: "Camila",
  last_name: "Nicolay",
  username: "camilanicolay",
  email: "camila@gmail.com",
  password: "123456"
)
camila.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446850/camila_tmrc6s.jpg")

chaida = User.create(
  first_name: "Chaida",
  last_name: "Berndsen",
  username: "chaidaberndsen",
  email: "chaida@gmail.com",
  password: "123456"
)
chaida.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682446796/chaida_vs9nru.webp")

michelle = User.create(
  first_name: "Michelle",
  last_name: "Gastelum",
  username: "michellegastelum",
  email: "michelle@gmail.com",
  password: "123456"
)
michelle.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682447021/michelle_bnqjxr.avif")

daniela = User.create(
  first_name: "Daniela",
  last_name: "Villegas",
  username: "danielavillegas",
  email: "daniela@gmail.com",
  password: "123456"
)
daniela.photo.attach("https://res.cloudinary.com/dwgembu1s/image/upload/v1682447158/daniela_jxtshq.avif")

puts "Finished creating #{User.count} Users..."
