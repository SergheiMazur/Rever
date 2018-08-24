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
games = ["007: Agent Under Fire", "Mario Kart 64", "Grand Theft Auto V", "Kingdom Hearts", "Sonic the HedgeHog"]
image_links = ["agent_under_fire.jpg", "gta_V.jpeg", "kingdom_hearts.jpg", "mario_kart_64.png", "sonic_the_hedgehog.png"]


alex = User.create!(email:"alex@rever.com", password:"qqqqqq", imagelink: "alex.png")
ali = User.create!(email:"ali@rever.com", password:"qqqqqq", imagelink: "ali.png")
serghei = User.create!(email:"serghei@rever.com", password:"qqqqqq", imagelink: "serghei.png")
elie = User.create!(email:"elie@rever.com", password:"qqqqqq", imagelink: "elie.png")


platforms.each do |platform|
  Platform.create!(name: platform)
end

games.each_with_index do |game, index|
  Game.create!(name: game,
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
    image_link: image_links[index],
    platform:Platform.find(Platform.first.id + index)
    )
end

meetup1 = Meetup.create!(title: "Let's play Mario Kart 64", location: "Montreal", lat:45.578041, lng:-73.5556777, start_time: Time.now, end_time: Time.now + 1*60*60, user:alex, game:Game.find(Game.first.id + 1))
meetup2 = Meetup.create!(title: "Kingdom Hearts battle", location: "Montreal", lat:45.543066, lng:-73.5722427, start_time: Time.now + 2*60*60, end_time: Time.now + 4*60*60, user:alex, game:Game.find(Game.first.id + 3))
meetup3 = Meetup.create!(title: "Go play !!!", location: "Montreal", lat:45.5026023, lng:-73.5660646, start_time: Time.now, end_time: Time.now + 1*60*60, user:serghei, game:Game.find(Game.first.id + 2))


Guest.create!(current_status:"Pending", user:serghei, meetup:meetup1)
Guest.create!(current_status:"Pending", user:alex, meetup:meetup3)





