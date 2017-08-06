class AddUserSenderToRbfriends < ActiveRecord::Migration[5.0]
  def change
    add_column :rbfriends, :user_sender, :integer
  end
end
