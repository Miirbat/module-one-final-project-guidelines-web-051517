require_relative "../config/environment.rb"
# require_relative "../lib/methodScrap.rb"
require "pry"

# require_relative "../app/models/movie.rb"
# require_relative "../app/models/movies_theatre.rb"
# require_relative "../app/models/neighborhood_theatre.rb"
# require_relative "../app/models/neighborhood.rb"
# require_relative "../app/models/theatre.rb"


def intro
puts "Hello, resident of Washington Heights/Harlem!"
puts "It's June 02, 2017."
puts "Please follow the prompts in entering the correct information so that I may direct you to the movie theatre closest to you!"
puts "Unfortunately, since you are so far uptown, some of the theatres may be located in New Jersey."
end



def enterZip
  puts "Please enter a valid zip code for your area."
  userZip = gets.chomp
  zips = [10029, 10035, 10031, 10032, 10033, 10034]
  if !zips.any? { |zip| zip == userZip.to_i}
    enterZip
  end
  userZip.to_i
end


def showAllMovies enterZip
  Neighborhood.find_by(zipcode: enterZip).movies.distinct.each do |x|
    puts x.name
  end
  puts "Please enter the name of the movie you would like to get theatres for."
  gets.chomp
end


def showTheatreList y, x
  Movie.all.find_by_name(y).neighborhoods.find_by(zipcode: x).theatres.each do |z|
    puts z.name
   end
   puts "Please select the theatre you would like to be directed to..."
   gets.chomp

   puts "\e[H\e[2J"

   link = "https://www.moviefone.com/theater/amc-loews-lincoln-square-13/638/showtimes/"
   puts link
end


# def getTheatresShowtimesZip movie, theatre, inwood_10031
#   newArr = []
#   inwood_10031.each do |i|
#     if i[:title] == movie
#        i[:showtimes].each do |h|
#          if h[:theatre][:name] == theatre
#            newArr << h[:dateTime]
#          end
#       end
#     end
#   end
# end
#   newArr
# end



def run

  intro

  x = enterZip

  puts "\e[H\e[2J"

  y = showAllMovies(x)

  puts "\e[H\e[2J"

  showTheatreList(y, x)


end
