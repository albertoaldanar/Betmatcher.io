class AddTeamSelectedToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :team_selected, :string
    add_column :games, :team_not_selected, :string
  end
end
