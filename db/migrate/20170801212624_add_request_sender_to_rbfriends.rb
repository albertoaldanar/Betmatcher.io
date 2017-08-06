class AddRequestSenderToRbfriends < ActiveRecord::Migration[5.0]
  def change
    add_reference :rbfriends, :request_sender, foreign_key: true
  end
end
