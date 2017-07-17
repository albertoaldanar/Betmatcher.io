class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.references :sport, foreign_key: true
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
