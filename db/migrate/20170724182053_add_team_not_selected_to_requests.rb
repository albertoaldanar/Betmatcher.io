class AddTeamNotSelectedToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :team_not_selected, :string
  end
end
