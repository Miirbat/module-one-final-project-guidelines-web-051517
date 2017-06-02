#
# require_relative "../config/environment.rb"
# require "pry"
# require_relative "east_harlem_10029.rb"
# require_relative "east_harlem_10035.rb"
# require_relative "inwood_10031.rb"
# require_relative "inwood_10032.rb"
# require_relative "inwood_10033.rb"
# require_relative "inwood_10034.rb"


def returnMovieList zipcode #change movieHash to zipcode.
  newArr = []
  zipcode.each do |i|
    i.each do |key, value|
      if key == :title
        newArr << value
      end
    end
  end
  newArr
end

#gets the movietimes for a given movie and zipcode
def getShowtimesZip movie, zipcode
  newArr = []
  zipcode.each do |i|
    if i.has_value?(movie)
       i[:showtimes].each do |h|
         newObj = {}
         newObj[h[:theatre][:name]] = h[:dateTime]
         newArr << newObj
        end
      end
    end
  newArr
  end





# def getTheatresShowtimesZip movie, theatre, inwood_10031
#   newArr = []
#   inwood_10031.each do |i|
#     i.each do |x|
#     if x[:title] == movie
#        x[:showtimes].each do |h|
#          if h[:theatre][:name] == theatre
#            newArr << h[:dateTime]
#          end
#       end
#     end
#   end
# end
#   newArr
# end


# getTheatresShowtimesZip "Pirates of the Caribbean: Dead Men Tell No Tales", "AMC Magic Johnson Harlem 9", central_harlem_10026


#get all of the nearby theatres for a given zipcode
def getTheatres zipcode
    # movieArr = []
    theatreArr = []
    zipcode.each do |this|
      # movieArr << this[:title]
      this[:showtimes].each do |thisthis|
        theatreArr << thisthis[:theatre][:name]
        end
      end
    theatreArr.uniq!
  end

#get the movies playing nearby for a given zipcode
def getMovies zipcode
  movieArr = []
  # theatreArr = []
  zipcode.each do |this|
    movieArr << this[:title]
    # this[:showtimes].each do |thisthis|
    #   theatreArr << thisthis[:theatre][:name]
    #   end
    end
  movieArr.uniq!
end

#this returns the TOTAL MOVIE ARRAY FOR JUN 2, 2017 in Central/East Harlem and Inwood/WashingtonHeights
def allMovies east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034
  allMoviesArr = []
  # allTheatres = []

            east_harlem_10029.each do |this|
              allMoviesArr << this[:title]
              # this[:showtimes].each do |thisthis|
              #   allTheatres << thisthis[:theatre][:name]
              #   end
              end

              east_harlem_10035.each do |this|
                allMoviesArr << this[:title]
                # this[:showtimes].each do |thisthis|
                #   allTheatres << thisthis[:theatre][:name]
                #   end
                end

                inwood_10031.each do |this|
                  allMoviesArr << this[:title]
                  # this[:showtimes].each do |thisthis|
                  #   allTheatres << thisthis[:theatre][:name]
                  #   end
                  end

                  inwood_10032.each do |this|
                    allMoviesArr << this[:title]
                    # this[:showtimes].each do |thisthis|
                    #   allTheatres << thisthis[:theatre][:name]
                    #   end
                    end

                    inwood_10033.each do |this|
                      allMoviesArr << this[:title]
                      # this[:showtimes].each do |thisthis|
                      #   allTheatres << thisthis[:theatre][:name]
                      #   end
                      end

                      inwood_10034.each do |this|
                        allMoviesArr << this[:title]
                        # this[:showtimes].each do |thisthis|
                        #   allTheatres << thisthis[:theatre][:name]
                        #   end
                        end
      allMoviesArr.uniq!
end
#calling it
# allMovies(central_harlem_10026, central_harlem_10027, central_harlem_10030, central_harlem_10037, central_harlem_10039, east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034)
def allTheatres east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034
  # allMovies = []
  allTheatresArr = []

            east_harlem_10029.each do |this|
              # allMovies << this[:title]
              this[:showtimes].each do |thisthis|
                allTheatresArr << thisthis[:theatre][:name]
                end
              end

              east_harlem_10035.each do |this|
                # allMovies << this[:title]
                this[:showtimes].each do |thisthis|
                  allTheatresArr << thisthis[:theatre][:name]
                  end
                end

                inwood_10031.each do |this|
                  # allMovies << this[:title]
                  this[:showtimes].each do |thisthis|
                    allTheatresArr << thisthis[:theatre][:name]
                    end
                  end

                  inwood_10032.each do |this|
                    # allMovies << this[:title]
                    this[:showtimes].each do |thisthis|
                      allTheatresArr << thisthis[:theatre][:name]
                      end
                    end

                    inwood_10033.each do |this|
                      # allMovies << this[:title]
                      this[:showtimes].each do |thisthis|
                        allTheatresArr << thisthis[:theatre][:name]
                        end
                      end

                      inwood_10034.each do |this|
                        # allMovies << this[:title]
                        this[:showtimes].each do |thisthis|
                          allTheatresArr << thisthis[:theatre][:name]
                          end
                        end

      allTheatresArr.uniq!
end
#calling it
# allTheatres(central_harlem_10026, central_harlem_10027, central_harlem_10030, central_harlem_10037, central_harlem_10039, east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034)

#all of the hood names and zipcodes
def allHoods
  [ {east_harlem: 10029},
    {east_harlem: 10035},
    {inwood: 10031},
    {east_harlem: 10032},
    {east_harlem: 10033},
    {east_harlem: 10034}]
end

#theatres per zip code

#call first method
def east_harlem_10029_theatres east_harlem_10029
    theatresInHarlemArr = []
  east_harlem_10029.each do |this|
    this[:showtimes].each do |thisthis|
      theatresInHarlemArr << thisthis[:theatre][:name]
      end
    end
  theatresInHarlemArr.uniq!
end

def east_harlem_10035_theatres east_harlem_10035
    theatresInHarlemArr = []
  east_harlem_10035.each do |this|
    this[:showtimes].each do |thisthis|
      theatresInHarlemArr << thisthis[:theatre][:name]
      end
    end
  theatresInHarlemArr.uniq!
end

def inwood_10031_theatres inwood_10031
    theatresInHarlemArr = []
  inwood_10031.each do |this|
    this[:showtimes].each do |thisthis|
      theatresInHarlemArr << thisthis[:theatre][:name]
      end
    end
  theatresInHarlemArr.uniq!
end

def inwood_10032_theatres inwood_10032
    theatresInHarlemArr = []
  inwood_10032.each do |this|
    this[:showtimes].each do |thisthis|
      theatresInHarlemArr << thisthis[:theatre][:name]
      end
    end
  theatresInHarlemArr.uniq!
end

def inwood_10033_theatres inwood_10033
    theatresInHarlemArr = []
  inwood_10033.each do |this|
    this[:showtimes].each do |thisthis|
      theatresInHarlemArr << thisthis[:theatre][:name]
      end
    end
  theatresInHarlemArr.uniq!
end

def inwood_10034_theatres inwood_10034
    theatresInHarlemArr = []
  inwood_10034.each do |this|
    this[:showtimes].each do |thisthis|
      theatresInHarlemArr << thisthis[:theatre][:name]
      end
    end
  theatresInHarlemArr.uniq!
end

#creates a nested array of movies to use in theatre/movie method
def nestedMovieArray
  allMoviesHash = allMovies(east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034)
  newArr = []
  allMoviesHash.each do |this|
      what = Array.new(1, this)
      newArr << what
    end
    newArr
end
#calls the method
# nestedMovieArray

#an array of arrays, of which the first element is the movie, adn subsequent elements are the theatres
def theatresPerMovie nestedMovieArray, east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034
    ultimateArr = nestedMovieArray

    ultimateArr.each do |x| #x is now every inner array of movie titles
      #now go through all of the zipcodes ,lol
      #this will be the standard model for each of them

      east_harlem_10029.each do |y|
        #find the appropriate movie...
        #does it match the first of each arr, which is the title...
        if y[:title] == x[0]
          #now get to the showtimes
          #iterate through showtimes, see if the theatre
          y[:showtimes].each do |z|
            if !x.any? { |theatre| theatre == z[:theatre][:name] }
              x << z[:theatre][:name]
            end
          end
        end
      end



      east_harlem_10035.each do |y|
        #find the appropriate movie...
        #does it match the first of each arr, which is the title...
        if y[:title] == x[0]
          #now get to the showtimes
          #iterate through showtimes, see if the theatre
          y[:showtimes].each do |z|
            if !x.any? { |theatre| theatre == z[:theatre][:name] }
              x << z[:theatre][:name]
            end
          end
        end
      end



      inwood_10031.each do |y|
        #find the appropriate movie...
        #does it match the first of each arr, which is the title...
        if y[:title] == x[0]
          #now get to the showtimes
          #iterate through showtimes, see if the theatre
          y[:showtimes].each do |z|
            if !x.any? { |theatre| theatre == z[:theatre][:name] }
              x << z[:theatre][:name]
            end
          end
        end
      end



      inwood_10032.each do |y|
        #find the appropriate movie...
        #does it match the first of each arr, which is the title...
        if y[:title] == x[0]
          #now get to the showtimes
          #iterate through showtimes, see if the theatre
          y[:showtimes].each do |z|
            if !x.any? { |theatre| theatre == z[:theatre][:name] }
              x << z[:theatre][:name]
            end
          end
        end
      end



      inwood_10033.each do |y|
        #find the appropriate movie...
        #does it match the first of each arr, which is the title...
        if y[:title] == x[0]
          #now get to the showtimes
          #iterate through showtimes, see if the theatre
          y[:showtimes].each do |z|
            if !x.any? { |theatre| theatre == z[:theatre][:name] }
              x << z[:theatre][:name]
            end
          end
        end
      end



      inwood_10034.each do |y|
        #find the appropriate movie...
        #does it match the first of each arr, which is the title...
        if y[:title] == x[0]
          #now get to the showtimes
          #iterate through showtimes, see if the theatre
          y[:showtimes].each do |z|
            if !x.any? { |theatre| theatre == z[:theatre][:name] }
              x << z[:theatre][:name]
            end
          end
        end
      end


    end
    ultimateArr
  # bindiqng.pry
end
#to call it
# theatresPerMovie(nestedMovieArray, east_harlem_10029, east_harlem_10035, inwood_10031, inwood_10032, inwood_10033, inwood_10034)
