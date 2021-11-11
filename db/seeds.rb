require 'faker'

puts 'cleaning DB...'
Movie.destroy_all

puts 'creating some movies'
5.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg',
    rating: rand(1..10)
  )
  puts "movie with id #{movie.id} created!"
end
