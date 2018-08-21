# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Platform.destroy_all
Game.destroy_all
Meetup.destroy_all
Guest.destroy_all
User.destroy_all


platforms = ["PlayStation 2", "Nintendo 64", "PlayStation 3", "PlayStation 4", "Sega Genesis"]
games = ["007: Agent Under Fire", "Mario Kart 64", "Grand Theft Auto V", "Kingdom Hearts", "Sonic the HedgeHog"]
image_links = ["agent_under_fire.jpg", "gta_V.jpeg", "kingdom_hearts.jpg", "mario_kart_64.png", "sonic_the_hedgehog.png"]


user_host = User.create!(email:"host@gmail.com", password:"qqqqqq")
user_guest = User.create!(email:"guest@gmail.com", password:"qqqqqq")
user2_guest = User.create!(email:"guest2@gmail.com", password:"qqqqqq")


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

meetup1 = Meetup.create!(title: "Let's play Mario Kart 64", location: "Montreal", lat:48.8648482, lng:2.3798534, start_time: Time.now, end_time: Time.now + 1*60*60, user:user_host, game:Game.find(Game.first.id + 2))
meetup2 = Meetup.create!(title: "Kingdom Hearts battle", location: "Montreal", lat:42.8648482, lng:2.3798534, start_time: Time.now + 2*60*60, end_time: Time.now + 4*60*60, user:user_host, game:Game.find(Game.first.id + 4))



Guest.create!(current_status:"Pending", user:user2_guest, meetup:meetup1)



