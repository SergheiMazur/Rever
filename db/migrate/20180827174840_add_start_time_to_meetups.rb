class AddStartTimeToMeetups < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :start_time, :string
    add_column :meetups, :datetime, :string
  end
end
