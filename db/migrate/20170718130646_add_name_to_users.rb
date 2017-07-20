class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :coins, :integer
    add_column :users, :country, :string
    add_column :users, :city, :string

  end
end
