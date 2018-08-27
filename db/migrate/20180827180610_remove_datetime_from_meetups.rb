class RemoveDatetimeFromMeetups < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetups, :datetime, :string
  end
end
