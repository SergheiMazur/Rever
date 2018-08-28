class AddDateToMeetups < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :date, :date
    remove_column :meetups, :start_date
    remove_column :meetups, :end_date
  end
end
