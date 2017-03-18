require 'rails_helper'

RSpec.describe Streamer, type: :model do
  it { should validate_presence_of(:handle) }
  it { should validate_presence_of(:profile) }
  it { should validate_presence_of(:games) }
  it { should validate_presence_of(:twitch) }
end
