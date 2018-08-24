class AddImagelinkToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :imagelink, :string
  end
end
