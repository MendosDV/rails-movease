# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# créer des users

Category.destroy_all

Category.create!(name: "Aérien")
Category.create!(name: "Maritime")
Category.create!(name: "Terrestre")
Category.create!(name: "Multi-tâche")

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

image_files = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/pierreafeu/pierreafeu_1_mul9rh.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/pierreafeu/pierreafeu_2_regyup.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/pierreafeu/pierreafeu3_erlvzn.avif',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/pierreafeu/pierresfeu4_qmqjia.avif'
]

voiture_pierrafeu = Vehicule.new(
  name: 'Voiture à pédales',
  description: "Besoin d'un moyen de transport préhistorique ? Une envie de se muscler les cuisses tout en s’amusant ? Louez notre incroyable voiture à pédales et remontez dans le temps. Avec ce véhicule écologique, vous pourrez explorer le monde des dinosaures, rencontrer des voisins des cavernes et vivre des aventures paléolithiques. Soyez prêt à pousser vos jambes, à fredonner 'Yabba Dabba Doo !' et à construire des maisons en pierre. Attention aux T-Rex affamés !",
  price: '100',
  user_id: pierrafeu.id,
  category: Category.find_by(name: 'Terrestre'),
  address: 'Souppes-sur-Loing, France',
  latitude: 2.733,
  longitude: 48.1833
)

image_files.each do |file|
  voiture_pierrafeu.pictures.attach(io: URI.open(file), filename: file)
end
voiture_pierrafeu.save!


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


# créer les categories
