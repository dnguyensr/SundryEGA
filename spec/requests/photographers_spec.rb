require 'rails_helper'

RSpec.describe 'Photographers API', type: :request do
  let!(:photographers) {create_list(:photographer, 1)}
  let(:photographers_id) { photographers.first.id}

  describe 'GET /photographers.json' do
    before {get '/api/v1/photographers.json'}

    it 'returns photographers' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

  end
end
