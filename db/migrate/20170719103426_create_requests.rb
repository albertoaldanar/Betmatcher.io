class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.integer :amount
      t.string :team_selected

      t.timestamps
    end
  end
end
