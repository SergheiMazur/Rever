class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :location
      t.integer :lat
      t.integer :lng
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
