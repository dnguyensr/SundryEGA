class Photographer < ApplicationRecord
  validates :handle, presence: true
  validates :handle, uniqueness: true
  belongs_to :user, optional: true
end
