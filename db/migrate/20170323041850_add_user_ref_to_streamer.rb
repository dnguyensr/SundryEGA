class AddUserRefToStreamer < ActiveRecord::Migration[5.0]
  def change
    add_reference :streamers, :user, foreign_key: true
  end
end
