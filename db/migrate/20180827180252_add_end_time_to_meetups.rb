class AddEndTimeToMeetups < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :end_time, :string
  end
end
