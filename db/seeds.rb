# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tracker.destroy_all
Journal.destroy_all
User.destroy_all

require 'faker'

5.times do
User.create({
  name: Faker::TvShows::RickAndMorty.character,
  email: 'baconCanSave.gmail.com',
  password: 'bacon',
  password_confirmation: 'bacon'
})
end

5.times do
Tracker.create({
  night_times: '00:00',
  morning_times: '00:00',
  slept_times: '0 hours',
  date: Date.current(),
  user_id: User.all.sample.id
})
end

5.times do 
  Journal.create({
    content: 'some content here',
    user_id: User.all.sample.id
  })
end

puts 'seeds complete'
# Time.now.strftime("%Y-%d-%m %H:%M:%S %Z") this is also something you can do