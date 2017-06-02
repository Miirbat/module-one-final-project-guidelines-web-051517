class Movie < ActiveRecord::Base
  has_many :movies_theatres
  has_many :theatres, through: :movies_theatres
  has_many :neighborhoods, through: :theatres

end
