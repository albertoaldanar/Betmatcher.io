class CreateRequestfs < ActiveRecord::Migration[5.0]
  def change
    create_table :requestfs do |t|
      t.string :index
      t.string :new
      t.string :destroy

      t.timestamps
    end
  end
end
