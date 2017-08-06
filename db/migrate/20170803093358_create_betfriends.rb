class CreateBetfriends < ActiveRecord::Migration[5.0]
  def change
    create_table :betfriends do |t|
      t.references :rbfriend, foreign_key: true

      t.timestamps
    end
  end
end
