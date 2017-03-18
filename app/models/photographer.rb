class Photographer < ApplicationRecord
  validates :handle, :profile, presence: true
end
