class AddAvailableToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :available, :boolean
  end
end
