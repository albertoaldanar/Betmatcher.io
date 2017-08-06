class AddFriendAToBetfriends < ActiveRecord::Migration[5.0]
  def change
    add_reference :betfriends, :friend_a, foreign_key: true
    add_reference :betfriends, :friend_b, foreign_key: true
  end
end
