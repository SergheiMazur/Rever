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


platforms = ["PlayStation 2", "Nintendo 64", "PlayStation 3", "PlayStation 4", "Sega Genesis"]
games = ["007: Agent Under Fire", "Mario Kart 64", "Grand Theft Auto V", "Kingdom Hearts", "Sonic the HedgeHog","Metal Gear Solid","Assassin's Creed","Batman: Arkham City","The Witcher 3"]
image_links = ["agent_under_fire.jpg", "mario_kart_64.png", "gta_V.jpeg", "kingdom_hearts.jpg", "sonic_the_hedgehog.png", "metal_gear.jpg","assassins_creed.jpg","batman.jpg","the_witcher_3.jpg"]




alex = User.create!(email:"alex@rever.com", password:"qqqqqq", imagelink: "alex.png", fullname: "Alex-Oliver")
ali = User.create!(email:"ali@rever.com", password:"qqqqqq", imagelink: "ali.png", fullname: "Ali")
serghei = User.create!(email:"serghei@rever.com", password:"qqqqqq", imagelink: "serghei.png", fullname: "Serghei")
elie = User.create!(email:"elie@rever.com", password:"qqqqqq", imagelink: "elie.png", fullname: "Elie")

platforms.each do |platform|
  Platform.create!(name: platform)
end

Game.create!(name: games[0], image_link: image_links[0], platform: Platform.first)
Game.create!(name: games[1], image_link: image_links[1], platform: Platform.find(Platform.first.id + 1))
Game.create!(name: games[2], image_link: image_links[2], platform: Platform.find(Platform.first.id + 2))
Game.create!(name: games[3], image_link: image_links[3], platform: Platform.find(Platform.first.id + 3))
Game.create!(name: games[4], image_link: image_links[4], platform: Platform.find(Platform.first.id + 4))
Game.create!(name: games[5], image_link: image_links[5], platform: Platform.find(Platform.first.id + 2))
Game.create!(name: games[6], image_link: image_links[6], platform: Platform.find(Platform.first.id + 3))
Game.create!(name: games[7], image_link: image_links[7], platform: Platform.find(Platform.first.id + 2))
Game.create!(name: games[8], image_link: image_links[8], platform: Platform.find(Platform.first.id + 2))




meetup1 = Meetup.create!(title: "Let's play Mario Kart 64", description: "Best meetup in Montreal >:)", location: "1175 Avenue Laurier O, Outremont, QC H2V 3R5", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:alex, game:Game.find(Game.first.id + 1))
meetup2 = Meetup.create!(title: "Kingdom Hearts battle", description: "My place only for 3 persons", location: "LMVR-Le Laurier, 286 Avenue Laurier O, Montreal, QC H2V 2K2", start_time: Time.now + 2*60*60, end_time: Time.now + 4*60*60, date: Time.now + 2*60*60, user:alex, game:Game.find(Game.first.id + 3))
meetup3 = Meetup.create!(title: "Go play", description: "I have the cool office with drinks and coffee machine. Come to join my party :)", location: "Coopérative d'habitation du Châtelet, 5308A Av du Parc, Montréal, QC H2V 4G7", start_time: Time.now, end_time: Time.now + 1*60*60, date: Time.now, user:serghei, game:Game.find(Game.first.id + 2))


Guest.create!(current_status:"Pending", user:serghei, meetup:meetup1)
Guest.create!(current_status:"Pending", user:alex, meetup:meetup3)
