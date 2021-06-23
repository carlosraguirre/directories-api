class AddLongandLat < ActiveRecord::Migration[6.1]
  def change
    add_column :directories, :latitude, :float
    add_column :directories, :longitude, :float
  end
end
