class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|  #creating table
      t.integer :zipcode
      t.string :neighborhood
        #and adding all of these columns
    end
  # On the left we've given the data type we'd like to cast the column as,
  # and on the right we've given the name we'd like to give the column.
  end

end
