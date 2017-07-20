class AddDeporToCountry < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :depor, :string
  end
end
