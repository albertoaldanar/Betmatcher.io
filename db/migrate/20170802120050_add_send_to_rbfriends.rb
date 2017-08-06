class AddSendToRbfriends < ActiveRecord::Migration[5.0]
  def change
    add_reference :rbfriends, :send, foreign_key: true
  end
end
