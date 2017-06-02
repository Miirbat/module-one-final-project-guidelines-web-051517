class Neighborhood < ActiveRecord::Base
  has_many :neighborhood_theatres
  has_many :theatres, through: :neighborhood_theatres
  has_many :movies, through: :theatres
end
