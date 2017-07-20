class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.references :user, foreign_key: true
      t.references :request, foreign_key: true
      t.string :status
      t.string :team_selected

      t.timestamps
    end
  end
end
