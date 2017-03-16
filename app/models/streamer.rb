class Streamer < ApplicationRecord
  validates :handle, :profile, :games, :twitch, presence: true
end
