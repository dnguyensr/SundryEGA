class Photographer < ApplicationRecord
  validates :handle, presence: true
  validates :handle, uniqueness: true
end
