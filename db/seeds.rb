# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first):
user = User.create(username: "user", email: "user@user.com", password: "password")
admin = User.create(username: "admin", email: "admin@admin.com", password: "password")
Streamer.create(handle: "MonaLisa", profile: "Mona Lisa profile", games: "Overwatch", avatar: "http://i.imgur.com/nXOOWK0.jpg", twitch: "placeholder", youtube: "placeholder", twitter: "placeholder", instagram: "placeholder", facebook: "placeholder")
Streamer.create(user_id: user.id, handle: "TheScream", profile: "Edvard Munch's The Scream", games: "DOTA2", avatar: "http://i.imgur.com/3ruFAxZ.jpg", twitch: "placeholder", youtube: "placeholder", twitter: "placeholder", instagram: "placeholder", facebook: "placeholder")
Streamer.create(user_id: admin.id, handle: "Henry8", profile: "Henry VIII by Hans Holbein the Younger", games: "League of Legends", avatar: "http://i.imgur.com/aOFUYbn.jpg", twitch: "placeholder", youtube: "placeholder", twitter: "placeholder", instagram: "placeholder", facebook: "placeholder")
Photographer.create(handle: "MonaLisa", profile: "Mona Lisa profile", avatar: "http://i.imgur.com/nXOOWK0.jpg", flickr: "placeholder", youtube: "placeholder", twitter: "placeholder", instagram: "placeholder", facebook: "placeholder", tistory: "placeholder")
Photographer.create(user_id: user.id, handle: "TheScream", profile: "Edvard Munch's The Scream", avatar: "http://i.imgur.com/3ruFAxZ.jpg", flickr: "placeholder", youtube: "placeholder", twitter: "placeholder")
Photographer.create(user_id: admin.id, handle: "Henry8", profile: "Henry VIII by Hans Holbein the Younger", avatar: "http://i.imgur.com/aOFUYbn.jpg")
