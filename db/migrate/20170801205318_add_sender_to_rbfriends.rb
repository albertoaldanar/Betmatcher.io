class AddSenderToRbfriends < ActiveRecord::Migration[5.0]
  def change
    add_column :rbfriends, :sender, :string
    add_column :rbfriends, :integer, :string
  end
end
