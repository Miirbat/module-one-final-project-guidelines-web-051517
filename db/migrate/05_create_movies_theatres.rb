class CreateMoviesTheatres < ActiveRecord::Migration
  def change
    create_table :movies_theatres do |t|
      # t.integer :movie_id
      # t.integer :theatre_id
      t.references :movie
      t.references :theatre
    end

  end

end
