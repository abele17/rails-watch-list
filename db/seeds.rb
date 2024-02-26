require "json"
require "open-uri"

url = "https://tmdb.lewagon.com/movie/top_rated"
serialized_movies = URI.open(url).read
movies = JSON.parse(serialized_movies)

movies["results"].each do |movie|
Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500/#{movie["poster_path"]}" , rating: movie["vote_average"])
end
