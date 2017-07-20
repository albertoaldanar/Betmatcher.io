class AddDeporToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :depor, :string
  end
end
