require 'rails_helper'

RSpec.describe 'Streamers API', type: :request do
  let!(:streamers) {create_list(:streamer, 1)}
  let(:streamers_id) { streamers.first.id}

  describe 'GET /streamers.json' do
    before {get '/api/v1/streamers.json'}

    it 'returns streamers' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

  end
end
