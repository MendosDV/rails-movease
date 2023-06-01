require "open-uri"

User.destroy_all
Category.destroy_all
Vehicule.destroy_all

# créer les catégories

Category.create!(name: "Aérien")
Category.create!(name: "Maritime")
Category.create!(name: "Terrestre")
Category.create!(name: "Multi-tâches")


# créer des users
# seeding images cloudinary
User.destroy_all
User.destroy_all

file_fred = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685389484/development/owner/fred-pierrafeu_ijszpl.jpg")
pierrafeu = User.new(
  email: 'Fred@pierrafeu.com',
  password: '123456',
  first_name: 'Fred',
  last_name: 'Pierrafeu',
  phone_number: '0612345678'
)
pierrafeu.avatar.attach(io: file_fred, filename: "fred-pierrafeu_ijszpl.jpg", content_type: "image/jpg")
pierrafeu.save


file_mickael = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/Michael_Knight_aqlrrs.webp")
k2000 = User.new(
  email: 'mickaelknight@k2000.com',
  password: '123456',
  first_name: 'Mickael',
  last_name: 'Knight',
  phone_number: '0987654321'
)
k2000.avatar.attach(io: file_mickael, filename: "Michael_Knight_aqlrrs.webp", content_type: "image/webp")
k2000.save


file_harry = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388826/development/owner/Harry_Potter_u4ge5r.webp")
harry = User.new(
  email: 'harrypotter@griffondor.com',
  password: '123456',
  first_name: 'Harry',
  last_name: 'Potter',
  phone_number: '0612345679'
)
harry.avatar.attach(io: file_harry, filename: "Harry_Potter_u4ge5r.webp", content_type: "image/webp")
harry.save


file_superman = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388828/development/owner/superman_mtewf9.png")
superman = User.new(
  email: 'clark.kent@superman.com',
  password: '123456',
  first_name: 'Clark',
  last_name: 'Kent',
  phone_number: '0612345678'
)
superman.avatar.attach(io: file_superman, filename: "superman_mtewf9.png", content_type: "image/png")
superman.save


file_wonderwoman = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388827/development/owner/wonderwoman_i1j79s.webp")
wonderwoman = User.new(
  email: 'diana.prince@wonderwoman.com',
  password: '123456',
  first_name: 'Diana',
  last_name: 'Prince',
  phone_number: '0622345678'
)
wonderwoman.avatar.attach(io: file_wonderwoman, filename: "wonderwoman_i1j79s.webp", content_type: "image/webp")
wonderwoman.save


file_aladdin = URI.open("https://res.cloudinary.com/dmgpqeugv/image/upload/v1685388826/development/owner/Aladdin_gd7rie.jpg")
aladdin = User.new(
  email: 'aladdin@disney.com',
  password: '123456',
  first_name: 'Aladdin',
  last_name: 'Ababoua',
  phone_number: '0967654321'
)
aladdin.avatar.attach(io: file_aladdin, filename: "Aladdin_gd7rie.jpg", content_type: "image/jpg")
aladdin.save


# créer des véhicules associés aux users


image_files_pierrafeu = [
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

image_files_pierrafeu.each do |file|
  voiture_pierrafeu.pictures.attach(io: URI.open(file), filename: file)
end
voiture_pierrafeu.save



image_files_k2000 = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Kitt%20K2000/kitt_2_onxozz.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Kitt%20K2000/kitt_int_3_mcxzvh.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/Kitt%20K2000/kitt_1_url54i.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/Kitt%20K2000/kitt_4_xfqjrj.jpg'
]

voiture_k2000 = Vehicule.new(
  name: 'Kitt',
  description: "En quête d'une voiture high-tech à intelligence artificielle ? Chat-GPT peut retourner se coucher, : Louez ma K200, la voiture intelligente la plus impressionnante jamais créée. Dotée d'une IA avancée, de gadgets futuristes et d'une carrosserie indémodable, cette voiture vous emmènera dans des missions pleines d'action. Soyez prêt à parler à votre voiture, à faire des sauts spectaculaires et à défendre la justice. Attention aux hackers malveillants et aux situations où vous avez besoin de turbo boost à la dernière seconde !",
  price: '359',
  user_id: k2000.id,
  category: Category.find_by(name: 'Terrestre'),
  address: 'Perpignan, France',
  latitude:	42.6886,
  longitude: 2.89483
)

image_files_k2000.each do |file|
  voiture_k2000.pictures.attach(io: URI.open(file), filename: file)
end
voiture_k2000.save


image_files_harry = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613175/development/vehicules/Nimbus%202000/nimbus_4_wbu8kz.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Nimbus%202000/nimbus_5_v4bop6.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Nimbus%202000/Nimbus2000_1_x6zm5b.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613173/development/vehicules/Nimbus%202000/Nimbus_2000_2_jo329w.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613174/development/vehicules/Nimbus%202000/nimbus2000_3_itmbor.jpg'
]

voiture_harry = Vehicule.new(
  name: 'Nimbus 2000',
  description: "Êtes-vous prêt à survoler les cieux avec style et magie ? Louez mon Nimbus 2000, le balai volant le plus rapide et le plus maniable de tout Poudlard. Que vous soyez un sorcier chevronné ou un débutant en quête de sensations fortes, le Nimbus 2000 vous emmènera dans une aventure aérienne que vous n'oublierez jamais. Quidditch, escapades nocturnes ou simplement échapper aux embouteillages moldus, ce balai est l'accessoire indispensable pour tout sorcier moderne. Attention aux chutes vertigineuses et aux courants d'air imprévisibles !",
  price: '599',
  user_id: harry.id,
  category: Category.find_by(name: 'Aérien'),
  address: 'London, England, UK',
  latitude:		51.5073,
  longitude: 	-0.1277
)

image_files_harry.each do |file|
  voiture_harry.pictures.attach(io: URI.open(file), filename: file)
end
voiture_harry.save


image_files_superman = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613171/development/vehicules/cape%20superman/cape_2_md9lbe.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613169/development/vehicules/cape%20superman/Cape_1_tzqq6t.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392847/development/vehicules/cape%20superman/chaussettes-superman-cape_r6mcg0.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613170/development/vehicules/cape%20superman/slip-superman-cape_vj1ppp.jpg'
]

voiture_superman = Vehicule.new(
  name: 'Cape',
  description: "Vous avez toujours rêvé d’arriver à l’heure à vos rendez-vous ? D’éviter les embouteillages pour aller au bureau ? Ou bien de voler parmi les oiseaux?  J’ai ce qu’il vous faut : Ma super cape !!
  . Cette cape en soie kryptonienne vous donnera le pouvoir de voler, de résister aux balles et de combattre le crime avec une poigne d'acier. Soyez prêt à incarner la véritable essence de la justice, à sauver les innocents et à montrer au monde que vous êtes bien plus qu'un simple mortel. Attention aux fragments de kryptonite et aux méchants aux plans diaboliques
  !
  En bonus : caleçon et chaussettes assortis ;)
  ",
  price: '999',
  user_id: superman.id,
  category: Category.find_by(name: 'Multi-tâches'),
  address: 'Paris, France',
  latitude:		48.8566,
  longitude: 	2.3522
)

image_files_superman.each do |file|
  voiture_superman.pictures.attach(io: URI.open(file), filename: file)
end
voiture_superman.save


image_files_wonderwoman = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/invisible%20Jet%20-%20wonder%20woman/Invisible_jet_4_qx4vjj.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/invisible%20Jet%20-%20wonder%20woman/invisible_jet_2_yprje3.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613172/development/vehicules/invisible%20Jet%20-%20wonder%20woman/invisible_jet_3_y32r4u.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685613171/development/vehicules/invisible%20Jet%20-%20wonder%20woman/invisible-jet_1_wg9poj.jpg',
]

voiture_wonderwoman = Vehicule.new(
  name: 'Invisible Jet',
  description: "Prendre les airs dans le jet de la plus puissante des Amazones est désormais possible! Louez mon Jet invisible et découvrez la vie d'une super-héroïne. Avec cet avion invisible, vous pourrez voler incognito, vous rendre dans des lieux inaccessibles et combattre les forces du mal. Soyez prêt à utiliser votre lasso magique, à porter des bracelets indestructibles et à montrer au monde que les femmes sont aussi des super-héros! Girl Power !",
  price: '749',
  user_id: wonderwoman.id,
  category: Category.find_by(name: 'Aérien'),
  address: 'Lyon, France',
  latitude:		45.7500,
  longitude: 	4.8500
)

image_files_wonderwoman.each do |file|
  voiture_wonderwoman.pictures.attach(io: URI.open(file), filename: file)
end
voiture_wonderwoman.save


image_files_aladdin = [
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392847/development/vehicules/tapis%20volant/tapis_volant_boxe_3_esz9mi.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392848/development/vehicules/tapis%20volant/Tapis_Volant_1_hfptpt.webp',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392848/development/vehicules/tapis%20volant/tapis_volant_2_ms7msx.jpg',
  'https://res.cloudinary.com/dmgpqeugv/image/upload/v1685392848/development/vehicules/tapis%20volant/tapis_volant_echecs_4_h5vtwz.png'
]

voiture_aladdin = Vehicule.new(
  name: 'Tapis volant',
  description: "Louez mon tapis volant et préparez-vous à vivre des aventures digne des contes des mille et une nuits. Ce tapis volant vous emmènera à travers les cieux, vous fera survoler les déserts et vous fera découvrir des trésors cachés. Soyez prêt à rencontrer des génies, à échapper aux voleurs et à vivre des histoires d'amour inoubliables. Attention aux tempêtes de sable et aux méchants vizirs qui cherchent à vous voler votre liberté ! Peut aussi devenir votre adversaire aux échecs et à la boxe.",
  price: '259',
  user_id: aladdin.id,
  category: Category.find_by(name: 'Aérien'),
  address: 'Barcelone, Espagne',
  latitude: 41.3850,
  longitude: 2.1734
)

image_files_aladdin.each do |file|
  voiture_aladdin.pictures.attach(io: URI.open(file), filename: file)
end
voiture_aladdin.save
