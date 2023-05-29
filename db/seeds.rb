# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# créer les categories = aérien, maritime, volant, all
Category.create(name: "Aérien")
Category.create(name: "Maritime")
Category.create(name: "Terrestre")
Category.create(name: "Multi-tâche")

# créer les vehicules
# Vehicule.create(name: "GMC Vendura",
#               description: "Le choix parfait pour un groupe d'anciens militaires ayant besoin d'armes et d'équipements de toutes sortes dans leurs aventures hebdomadaires mais aussi pour une sortie pêche entre amis ou un EVDJH!! Phares antibrouillard sur le toit et dans la calandre, un pare-buffle, des jantes rouges style turbine, un becquet rouge sur le toit, un pare-soleil extérieur et vous obtiendrez un van qui ne passera pas inaperçu. ",
#               category: Category.find_by(name: "Terrestre"),
#               price: '1000€',
#               image: '')
