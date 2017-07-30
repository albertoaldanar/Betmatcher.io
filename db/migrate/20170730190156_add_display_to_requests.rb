class AddDisplayToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :display, :boolean, default: true
  end
end
