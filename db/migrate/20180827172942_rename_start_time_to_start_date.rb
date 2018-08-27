class RenameStartTimeToStartDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :meetups, :start_time, :start_date
  end
end
