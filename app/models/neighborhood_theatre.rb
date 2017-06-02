class NeighborhoodTheatre < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :theatre
end
