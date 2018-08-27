class ChangeNameLatLngToLatitudeLongitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :meetups, :lat, :latitude
    rename_column :meetups, :lng, :longitude
  end
end
