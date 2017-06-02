class CreateNeighborhoodTheatres < ActiveRecord::Migration
  def change
    create_table :neighborhood_theatres do |t|
      t.integer :neighborhood_id
      t.integer :theatre_id

    end

  end

end
