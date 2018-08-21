class ChangeLatLngToBeFloatInMeetups < ActiveRecord::Migration[5.2]
  def change
    change_column :meetups, :lat, :float
    change_column :meetups, :lng, :float
  end
end
