# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
require "open-uri"

# file = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685376219/mario_wfyqjk.png")
user = User.create!(email: "mario@nintendo.com", first_name: "mario", last_name: "nintendo", phone_number: "0621456577", password: "marionintendo")
user.avatar.attach(io: File.open("photo_seed/mario.png"), filename: 'toto.svg')
user.save!
# User.create!(email: "mario@nintendo.com", first_name: "mario", last_name: "nintendo", phone_number: "0621456577", avatar: )
