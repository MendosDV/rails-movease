# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"





# créer des users


# seeding images cloudinary
User.destroy_all

file = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685389484/development/owner/fred-pierrafeu_ijszpl.jpg")
pierrafeu = User.new(
  email: 'Fred@pierrafeu.com',
  password: '123456',
  first_name: 'Fred',
  last_name: 'Pierrafeu',
  phone_number: '0612345678'
)
pierrafeu.avatar.attach(io: file, filename: "fred-pierrafeu_ijszpl.jpg", content_type: "image/jpg")
pierrafeu.save


file2 = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/Michael_Knight_aqlrrs.webp")
k2000 = User.new(
  email: 'mickaelknight@k2000.com',
  password: '123456',
  first_name: 'Mickael',
  last_name: 'Knight',
  phone_number: '0987654321'
)
k2000.avatar.attach(io: file2, filename: "Michael_Knight_aqlrrs.webp", content_type: "image/webp")
k2000.save



# créer des véhicules associés aux users

 Vehicule.destroy_all
# puts "Création des véhicules"
# pierrafeu.vehicules.create!(
#   name: 'Voiture à pédales',
#   description: "Besoin d'un moyen de transport préhistorique ? Une envie de se muscler les cuisses tout en s’amusant ? Louez notre incroyable voiture à pédales et remontez dans le temps. Avec ce véhicule écologique, vous pourrez explorer le monde des dinosaures, rencontrer des voisins des cavernes et vivre des aventures paléolithiques. Soyez prêt à pousser vos jambes, à fredonner 'Yabba Dabba Doo !' et à construire des maisons en pierre. Attention aux T-Rex affamés !",
#   price: '100',
#   photo: '/app/assets/images/vehicles/pierrafeu_1.jpeg',
#   user_id: pierrafeu.id,
#   category_id: 19,
#   address: 'Souppes-sur-Loing, France',
#   latitude: 2.733,
#   longitude: 48.1833
# )

# k2000.vehicules.create!(
#   name: Kitt,
#   description: "En quête d'une voiture high-tech à intelligence artificielle ? Chat-GPT peut retourner se coucher, : Louez ma K200, la voiture intelligente la plus impressionnante jamais créée. Dotée d'une IA avancée, de gadgets futuristes et d'une carrosserie indémodable, cette voiture vous emmènera dans des missions pleines d'action. Soyez prêt à parler à votre voiture, à faire des sauts spectaculaires et à défendre la justice. Attention aux hackers malveillants et aux situations où vous avez besoin de turbo boost à la dernière seconde !",
#   price: '333',
#   photo: '/app/assets/images/vehicles/kitt_1.jpeg',
#   user_id: k2000.id,
#   category_id: 19,
#   address: 'San Bernardino, CA',
#   latitude: 34.1083,
#   longitude: -117.2897
# )



# Supposons que vous avez trois fichiers d'images pour les véhicules
# image_files = [
#   'car1.jpg',
#   'car2.jpg',
#   'car3.jpg'
# ]

# vehicle = Vehicle.create!(
#   name: 'Kitt',
#   description: "En quête d'une voiture high-tech à intelligence artificielle ? Chat-GPT peut retourner se coucher, : Louez ma K200, la voiture intelligente la plus impressionnante jamais créée. Dotée d'une IA avancée, de gadgets futuristes et d'une carrosserie indémodable, cette voiture vous emmènera dans des missions pleines d'action. Soyez prêt à parler à votre voiture, à faire des sauts spectaculaires et à défendre la justice. Attention aux hackers malveillants et aux situations où vous avez besoin de turbo boost à la dernière seconde !",
#   price: '333',
#   user_id: k2000.id,
#   category_id: 19,
#   address: 'San Bernardino, CA',
#   latitude: 34.1083,
#   longitude: -117.2897
# )

# image_files.each do |file|
#   vehicle.pictures.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'vehicles', file)), filename: file)
# end



# créer les categories
Category.destroy_all

Category.create!(name: "Aérien") #id=17
Category.create!(name: "Maritime") #id=18
Category.create!(name: "Terrestre") #id=19
Category.create!(name: "Multi-tâche") #id=20
