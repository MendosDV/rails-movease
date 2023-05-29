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
