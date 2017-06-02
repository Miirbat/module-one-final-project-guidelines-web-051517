require_relative "../config/environment.rb"
require_relative "../lib/methodScrap.rb"



def importMovies
  allMoviesImportArr = allMovies(east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034)

  allMoviesImportArr.each do |thing|
    Movie.create(name: "#{thing}")
  end
end
importMovies

def importTheatres
  allTheatresImportArr = allTheatres(east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034)

  allTheatresImportArr.each do |thing|
    Theatre.create(name: "#{thing}")
  end

end
importTheatres

def importHoods
  allHoods.each do |thing|
    thing.each do |hoodname, zipcodes|
        Neighborhood.create(zipcode: zipcodes, neighborhood: hoodname)
    end
  end
end
importHoods


def seedMoviesTheatres
  something = theatresPerMovie(nestedMovieArray, east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034)
  something.each do |x|
    movieTitle = x[0]
    x.shift()
    x.each do |y|
      m = Movie.find_by_name(movieTitle)
      m.theatres << Theatre.find_by_name(y)
    end
  end
end
seedMoviesTheatres

def seedNeighborhoodTheatres

  east_harlem_10029_theatres(east_harlem_10029).each do |x|
    n = Neighborhood.find_by(zipcode: 10029)
    n.theatres << Theatre.find_by_name(x)
  end

  east_harlem_10035_theatres(east_harlem_10035).each do |x|
    n = Neighborhood.find_by(zipcode: 10035)
    n.theatres << Theatre.find_by_name(x)
  end

  inwood_10031_theatres(inwood_10031).each do |x|
    n = Neighborhood.find_by(zipcode: 10031)
    n.theatres << Theatre.find_by_name(x)
  end

  inwood_10032_theatres(inwood_10032).each do |x|
    n = Neighborhood.find_by(zipcode: 10032)
    n.theatres << Theatre.find_by_name(x)
  end

  inwood_10033_theatres(inwood_10033).each do |x|
    n = Neighborhood.find_by(zipcode: 10033)
    n.theatres << Theatre.find_by_name(x)
  end

  inwood_10034_theatres(inwood_10034).each do |x|
    n = Neighborhood.find_by(zipcode: 10034)
    n.theatres << Theatre.find_by_name(x)
  end
end

seedNeighborhoodTheatres
