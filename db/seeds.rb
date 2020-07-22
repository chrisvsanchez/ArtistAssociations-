# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
Song.destroy_all
puts "Loading Arists"
Artist.create([
    {
        name: "Kelsey King"
    },
    {
        name: "Chris Ca$h"
    }
])
puts "Artist complete"
puts "Loading songs"
Song.create([
    {
    title:"Bootcamp wont beat me",
    genre:"country",
    artist_id:Artist.all.sample.id
    },
    {
    title: "ASSOCIATE THIS",
    genre:"rap",
    artist_id:Artist.all.sample.id
    }
])
puts "songs complete"