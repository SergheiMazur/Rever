class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :current_status
      t.references :user, foreign_key: true
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
