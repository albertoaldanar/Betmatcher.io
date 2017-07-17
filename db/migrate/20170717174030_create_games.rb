class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :country, foreign_key: true
      t.string :local
      t.string :visit
      t.datetime :date
      t.boolean :top
      t.float :pct_team
      t.float :pct_tie
      t.integer :clock
      t.integer :score_l
      t.integer :score_v
      t.string :part
      t.string :date_show
      t.string :picture
      t.string :color_l
      t.string :color_v

      t.timestamps
    end
  end
end
