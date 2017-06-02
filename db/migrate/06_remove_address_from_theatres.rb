class RemoveAddressFromTheatres < ActiveRecord::Migration
  def change
    remove_column :theatres, :address
  end
end
