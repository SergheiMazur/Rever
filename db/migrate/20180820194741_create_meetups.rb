class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :title
      t.string :location
      t.integer :lat
      t.integer :lng
      t.datetime :start_time
      t.datetime :end_time
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
