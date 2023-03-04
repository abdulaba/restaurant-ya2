require "open-uri"

if Rails.env.development?
 puts "Deleting data"
 Food.destroy_all
 Schedule.destroy_all
 Restaurant.destroy_all
 User.destroy_all
 puts "Data deleted successfully"
end

puts "Creating users"
user1 = User.create!(name: "Victoria", address: "Av. Las Condes 345", email: "vicky@gmail.com", password: "123456")
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1673618845/pqxbv0ljsueied2qgx8m.jpg")
user1.photo.attach(io: file, filename: "vicky.png", content_type: "image/png")
user1.save
puts "#{user1.name} created successfully"

user2 = User.create!(name: "Steve", address: "Av. Las Condes 345", email: "steve@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/121344930?v=4")
user2.photo.attach(io: file, filename: "steve.png", content_type: "image/png")
user2.save
puts "#{user2.name} created successfully"

user3 = User.create!(name: "Fernando", address: "Av. Las Condes 345", email: "fernando@gmail.com", password: "123456")
file = URI.open("https://avatars.githubusercontent.com/u/108149366?v=4")
user3.photo.attach(io: file, filename: "fdo.png", content_type: "image/png")
user3.save
puts "#{user3.name} created successfully"

puts "Creating restaurants"

restaurant1 = Restaurant.create!(name: "La carnecita roja y el lomo feroz", address: "Av. La Florida 3567", specialty: "Carne asada", description: "La mejor carne asada de la ciudad, ven a disfrutar con nosotros todas la variedades de platos", user: user1)

file = URI.open("https://www.eltiempo.com/files/image_640_428/uploads/2022/11/11/636ec9b036dfd.png")
restaurant1.photo.attach(io: file, filename: "r1.png", content_type: "image/png")
restaurant1.save

restaurant2 = Restaurant.create!(name: "Los tres cerditos al spiedo", address: "Av. Bernardo O'higgins 1267", specialty: "Carnes premium", description: "Deleita a tu paladar con las mejores carnes premium de cerdo, vacuno y guayu", user: user1)

file = URI.open("https://foodandpleasure.com/wp-content/uploads/2018/06/piantao-3.jpg")
restaurant2.photo.attach(io: file, filename: "r2.png", content_type: "image/png")
restaurant2.save

restaurant3 = Restaurant.create!(name: "我是王 - Yo soy wang ", address: "Av. Recoleta 3500, Santiago", specialty: "Comida China", description: "Comida tradicional china cantonesa", user: user2)

file = URI.open("https://media.glamour.es/photos/616f6ddd16c8b9c6f6317eaf/master/w_1600%2Cc_limit/742412.jpg")
restaurant3.photo.attach(io: file, filename: "r3.png", content_type: "image/png")
restaurant3.save

puts "Creating foods"

food = Food.create!(name: "Biffe chorizo", description: "Carne premium, asada al carbon", price: 14500, available: true, restaurant: restaurant1)
file = URI.open("https://tofuu.getjusto.com/orioneat-prod-resized/ZQFHLTvwgTcfwd6nZ-1200-1200.webp")
food.photo.attach(io: file, filename: "f1.png", content_type: "image/png")
food.save

food = Food.create!(name: "Cerdo al spiedo", description: "Crujiente y sabrosa carne de cerdo cocinada a fuego lento", price: 18500, available: true, restaurant: restaurant2)
file = URI.open("https://d1mm7fnxb6z2bq.cloudfront.net/media/images/spiedo1.height-500.jpg")
food.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food.save

food = Food.create!(name: "Carne mongoliana", description: "Carne, cebollin, aji, soya y condimentos", price: 6500, available: true, restaurant: restaurant3)
file = URI.open("https://nutricionistarociosuarez.cl/wp-content/uploads/2018/08/chinese-satay-beef-106400-1-1300x867.jpeg")
food.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food.save

