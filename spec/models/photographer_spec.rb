require 'rails_helper'

RSpec.describe Photographer, type: :model do
  it { should validate_presence_of(:handle) }
  it { should validate_presence_of(:profile) }
end
