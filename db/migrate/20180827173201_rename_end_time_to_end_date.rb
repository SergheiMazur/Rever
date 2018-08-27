class RenameEndTimeToEndDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :meetups, :end_time, :end_date
  end
end
