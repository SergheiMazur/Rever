class AddFullNametoUsers < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :fullname, :string)
  end
end
