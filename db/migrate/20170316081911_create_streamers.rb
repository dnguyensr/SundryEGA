class CreateStreamers < ActiveRecord::Migration[5.0]
  def change
    create_table :streamers do |t|
      t.string :handle
      t.text :profile
      t.string :games
      t.string :avatar
      t.string :twitch
      t.string :youtube
      t.string :twitter
      t.string :instagram
      t.string :facebook

      t.timestamps
    end
  end
end
