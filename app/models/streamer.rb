class Streamer < ApplicationRecord
  validates :handle, :games, :twitch, presence: true
  validates :handle, uniqueness: true
  belongs_to :user, optional: true
end
