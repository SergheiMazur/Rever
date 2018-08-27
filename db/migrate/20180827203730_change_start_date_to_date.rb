class ChangeStartDateToDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetups, :start_time
    remove_column :meetups, :end_time

    add_column :meetups, :start_time, :time
    add_column :meetups, :end_time, :time
  end
end
