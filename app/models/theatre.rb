class Theatre < ActiveRecord::Base
  has_many :neighborhood_theatres
  has_many :neighborhoods, through: :neighborhood_theatres
  has_many :movies_theatres
  has_many :movies, through: :movies_theatres

end
