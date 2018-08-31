# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all
Meetup.destroy_all
Game.destroy_all
Platform.destroy_all


User.destroy_all

platforms = ["Atari Panther", "Nintendo 64", "Nintendo GameCube", "Nintendo Wii", "Nintendo Wii U", "Playstation 1", "Playstaion 2", "Playstation 3", "Playstation 4", "Sega Dreamcast", "Sega Genesis", "Super Nintendo", "Xbox", "Xbox 360", "Xbox One"]
games = ["007: Agent Under Fire", "Mario Kart 64", "Grand Theft Auto V", "Kingdom Hearts", "Sonic the HedgeHog", "Fortnite", "Bioshock", "FIFA 18", "NBA 2k17", "The Legend of Zelda: Breath of the Wild", "World of Warcraft","Need for Speed", "Grand Theft Auto: Vice City", "Resident Evil V", "Dragon Ball Fighter Z", "Dance Dance Revolution: 3", "NHL 18", "Mario Kart 64", "The Legend of Zelda and the Ocarina of Time", "Pokemon Stadium", "Super Smash Bros. Melee", "Super Mario Bros."]
image_links = ["agent_under_fire.jpg", "mario_kart_64.png", "gta_V.jpeg", "kingdom_hearts.jpg", "sonic_the_hedgehog.png", "fortnite.png", "bioschock.png", "FIFA18.png", "nba2k17.png", "zelda2.png", "wow.png", "n4s.png", "gtavc.png", "resevil.png", "dragonball.png", "ddr.png", "nhl18.png", "mariokart64.png", "zelda3.png", "pokemon.png", "smash2.png", "supermario.png"]


alex = User.create!(email:"alex@rever.com", password:"qqqqqq", imagelink: "alex.png", fullname: "Alex-Oliver")
ali = User.create!(email:"ali@rever.com", password:"qqqqqq", imagelink: "ali.png", fullname: "Ali")
serghei = User.create!(email:"serghei@rever.com", password:"qqqqqq", imagelink: "serghei.png", fullname: "Serghei")
elie = User.create!(email:"elie@rever.com", password:"qqqqqq", imagelink: "elie.png", fullname: "Elie")
kojo = User.create!(email:"kojo@rever.com", password:"qqqqqq", imagelink: "kojo.png", fullname: "Kojo")
everett = User.create!(email:"everett@rever.com", password:"qqqqqq", imagelink: "everett.png", fullname: "Everett")
sara = User.create!(email:"sara@rever.com", password:"qqqqqq", imagelink: "sara.png", fullname: "Sara")
sawyer = User.create!(email:"sawyer@rever.com", password:"qqqqqq", imagelink: "sawyer.png", fullname: "Sawyer")
martin = User.create!(email:"martin@rever.com", password:"qqqqqq", imagelink: "martin.png", fullname: "Martin")
guillaume = User.create!(email:"guillaume@rever.com", password:"qqqqqq", imagelink: "guillaume.png", fullname: "Guillaume")
mg = User.create!(email:"mg@rever.com", password:"qqqqqq", imagelink: "mg.png", fullname: "MG")
stephanie = User.create!(email:"stephanie@rever.com", password:"qqqqqq", imagelink: "stephanie.png", fullname: "Stephanie")
celine =  User.create!(email:"celine@rever.com", password:"qqqqqq", imagelink: "celine.png", fullname: "Celine")
justin = User.create!(email:"justin@rever.com", password:"qqqqqq", imagelink: "justin.png", fullname: "Justin")
konstantin = User.create!(email:"konstantin@rever.com", password:"qqqqqq", imagelink: "konstantin.png", fullname: "Konstantin")
aaron = User.create!(email:"aaron@rever.com", password:"qqqqqq", imagelink: "aaron.png", fullname: "Aaron")
alexg = User.create!(email:"alexg@rever.com", password:"qqqqqq", imagelink: "alexg.png", fullname: "Alex")
caroline = User.create!(email:"caroline@rever.com", password:"qqqqqq", imagelink: "caroline.png", fullname: "Caroline")
nordin = User.create!(email:"nordin@rever.com", password:"qqqqqq", imagelink: "nordin.png", fullname: "Nordin")
aude = User.create!(email:"aude@rever.com", password:"qqqqqq", imagelink: "aude.png", fullname: "Aude")
francois =  User.create!(email:"francois@rever.com", password:"qqqqqq", imagelink: "francois.png", fullname: "Francois")
mark = User.create!(email:"mark@rever.com", password:"qqqqqq", imagelink: "mark.png", fullname: "Mark")
michael = User.create!(email:"michael@rever.com", password:"qqqqqq", imagelink: "michael.png", fullname: "Stephane")
stephane = User.create!(email:"stephane@rever.com", password:"qqqqqq", imagelink: "michael.png", fullname: "Stephane")



platforms.each do |platform|
  Platform.create!(name: platform)
end

Game.create!(name: games[0], image_link: image_links[0], platform: Platform.find(Platform.first.id + 1))
Game.create!(name: games[1], image_link: image_links[1], platform: Platform.find(Platform.first.id + 1))
Game.create!(name: games[2], image_link: image_links[2], platform: Platform.find(Platform.first.id + 7))
Game.create!(name: games[3], image_link: image_links[3], platform: Platform.find(Platform.first.id + 3))
Game.create!(name: games[4], image_link: image_links[4], platform: Platform.find(Platform.first.id + 10))
Game.create!(name: games[5], image_link: image_links[5], platform: Platform.find(Platform.first.id + 14))
Game.create!(name: games[6], image_link: image_links[6], platform: Platform.find(Platform.first.id + 12))
Game.create!(name: games[7], image_link: image_links[7], platform: Platform.find(Platform.first.id + 8))
Game.create!(name: games[8], image_link: image_links[8], platform: Platform.find(Platform.first.id + 14))
Game.create!(name: games[9], image_link: image_links[9], platform: Platform.find(Platform.first.id + 6))
Game.create!(name: games[10], image_link: image_links[10], platform: Platform.find(Platform.first.id + 13))
Game.create!(name: games[11], image_link: image_links[11], platform: Platform.find(Platform.first.id + 12))
Game.create!(name: games[12], image_link: image_links[12], platform: Platform.find(Platform.first.id + 13))
Game.create!(name: games[13], image_link: image_links[13], platform: Platform.find(Platform.first.id + 7))
Game.create!(name: games[14], image_link: image_links[14], platform: Platform.find(Platform.first.id + 8))
Game.create!(name: games[15], image_link: image_links[15], platform: Platform.find(Platform.first.id + 12))
Game.create!(name: games[16], image_link: image_links[16], platform: Platform.find(Platform.first.id + 4))
Game.create!(name: games[17], image_link: image_links[17], platform: Platform.find(Platform.first.id + 8))
Game.create!(name: games[18], image_link: image_links[18], platform: Platform.find(Platform.first.id + 1))
Game.create!(name: games[19], image_link: image_links[19], platform: Platform.find(Platform.first.id + 1))
Game.create!(name: games[20], image_link: image_links[20], platform: Platform.find(Platform.first.id + 1))
Game.create!(name: games[21], image_link: image_links[21], platform: Platform.find(Platform.first.id + 2))



meetup1 = Meetup.create!(title: "Let's play Mario Kart 64", description: "Best meetup in Montreal >:)", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:kojo, game:Game.find(Game.first.id + 1))
meetup2 = Meetup.create!(title: "Kingdom Hearts battle", description: "My place only for 3 persons", location: "LMVR-Le Laurier, 286 Avenue Laurier O, Montreal, QC H2V 2K2", start_time: Time.now + 2*60*60, end_time: Time.now + 4*60*60, date: Time.now + 2*60*60, user:martin, game:Game.find(Game.first.id + 3))
meetup3 = Meetup.create!(title: "FORNITE SHOWDOWN", description: "Come join my fornight office party (we have a keg!) :)", location: "Coopérative d'habitation du Châtelet, 5308A Av du Parc, Montréal, QC H2V 4G7", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:mg, game:Game.find(Game.first.id + 7))
meetup4 = Meetup.create!(title: "Let's pretend it's the 80s ☮", description: "My place is a little tight but maybe we could snuggle", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:sara, game:Game.find(Game.first.id + 4))
meetup5 = Meetup.create!(title: "Anyone want to run some 2k?", description: "Looking to play tournament style", location: "2027 Rue Saint Timothee, Montreal, H2L 3P5", start_time: Time.now + 72*60*60, end_time: Time.now + 75*60*60, date: Time.now, user:elie, game:Game.find(Game.first.id + 8))
meetup6 = Meetup.create!(title: "Videogames and movie night", description: "I'll be streaming I Love Lucy episodes", location: "3415 McTavish Street, Montreal, Quebec H3A 0C8", start_time: Time.now + 72*60*60, end_time: Time.now + 72*60*60, date: Time.now, user:everett, game:Game.find(Game.first.id + 10))
meetup7 = Meetup.create!(title: "Pokemon Stadium Tournament", description: "I have a packed fridge full of food :)", location: "5333 Casgrain Ave, Montreal, QC H2T 1X3", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:celine, game:Game.find(Game.first.id + 18))
meetup8 = Meetup.create!(title: "Retro night at my house", description: "Everyone welcome, BYOB!", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:sawyer, game:Game.find(Game.first.id + 20))
meetup9 = Meetup.create!(title: "super SMASH tournament ;)", description: "My place is a little tight but maybe we could snuggle", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 148*60*60, date: Time.now, user:ali, game:Game.find(Game.first.id + 20))
meetup10 = Meetup.create!(title: "**OFFICIAL SMASH TOURNEY**", description: "Looking to play tournament style", location: "2027 Rue Saint Timothee, Montreal, H2L 3P5", start_time: Time.now + 72*60*60, end_time: Time.now + 75*60*60, date: Time.now, user:michael, game:Game.find(Game.first.id + 11))
meetup11 = Meetup.create!(title: "Videogames and movie night", description: "I'll be streaming I Love Lucy episodes", location: "3415 McTavish Street, Montreal, Quebec H3A 0C8", start_time: Time.now + 72*60*60, end_time: Time.now + 72*60*60, date: Time.now, user:francois, game:Game.find(Game.first.id + 10))
meetup12 = Meetup.create!(title: "Pokemon Stadium Tournament", description: "I have a packed fridge full of food :)", location: "5333 Casgrain Ave, Montreal, QC H2T 1X3", start_time: Time.now, end_time: Time.now + 109*60*60, date: Time.now, user:guillaume, game:Game.find(Game.first.id + 13))
meetup13 = Meetup.create!(title: "Retro night at my house", description: "Everyone welcome, BYOB!", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 154*60*60, date: Time.now, user:aude, game:Game.find(Game.first.id + 9))
meetup14 = Meetup.create!(title: "Retro night at my house", description: "Everyone welcome, BYOB!", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:sawyer, game:Game.find(Game.first.id + 3))
meetup15 = Meetup.create!(title: "super SMASH tournament ;)", description: "My place is a little tight but maybe we could snuggle", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 148*60*60, date: Time.now, user:alexg, game:Game.find(Game.first.id + 5))
meetup16 = Meetup.create!(title: "**OFFICIAL SMASH TOURNEY**", description: "Looking to play tournament style", location: "2027 Rue Saint Timothee, Montreal, H2L 3P5", start_time: Time.now + 72*60*60, end_time: Time.now + 75*60*60, date: Time.now, user:justin, game:Game.find(Game.first.id + 7))
meetup17 = Meetup.create!(title: "Videogames and movie night", description: "I'll be streaming I Love Lucy episodes", location: "3415 McTavish Street, Montreal, Quebec H3A 0C8", start_time: Time.now + 72*60*60, end_time: Time.now + 72*60*60, date: Time.now, user:furkan, game:Game.find(Game.first.id + 11))
meetup18 = Meetup.create!(title: "Pokemon Stadium Tournament", description: "I have a packed fridge full of food :)", location: "5333 Casgrain Ave, Montreal, QC H2T 1X3", start_time: Time.now, end_time: Time.now + 109*60*60, date: Time.now, user:nordin, game:Game.find(Game.first.id + 12))
meetup19 = Meetup.create!(title: "Retro night at my house", description: "Everyone welcome, BYOB!", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 154*60*60, date: Time.now, user:caroline, game:Game.find(Game.first.id + 15))
meetup20 = Meetup.create!(title: "Retro night at my house", description: "Everyone welcome, BYOB!", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 154*60*60, date: Time.now, user:aaron, game:Game.find(Game.first.id + 19))


Guest.create!(current_status:"Pending", user:justin, meetup:meetup1)
Guest.create!(current_status:"Pending", user:mg, meetup:meetup3)
Guest.create!(current_status:"Pending", user:francois, meetup:meetup3)
Guest.create!(current_status:"Pending", user:martin, meetup:meetup3)
Guest.create!(current_status:"Pending", user:celine, meetup:meetup3)
Guest.create!(current_status:"Pending", user:everett, meetup:meetup3)
Guest.create!(current_status:"Pending", user:konstantin, meetup:meetup3)
Guest.create!(current_status:"Pending", user:sara, meetup:meetup2)
Guest.create!(current_status:"Pending", user:justin, meetup:meetup6)
Guest.create!(current_status:"Pending", user:mg, meetup:meetup8)
Guest.create!(current_status:"Pending", user:francois, meetup:meetup19)
Guest.create!(current_status:"Pending", user:martin, meetup:meetup14)
Guest.create!(current_status:"Pending", user:celine, meetup:meetup11)
Guest.create!(current_status:"Pending", user:everett, meetup:meetup5)
Guest.create!(current_status:"Pending", user:konstantin, meetup:meetup6)
Guest.create!(current_status:"Pending", user:sara, meetup:meetup8)
