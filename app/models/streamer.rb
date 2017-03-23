class Streamer < ApplicationRecord
  validates :handle, :games, :twitch, presence: true
  validates :handle, uniqueness: true
end
