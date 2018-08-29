class AddDescriptionToMeetups < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :description, :string
  end
end
