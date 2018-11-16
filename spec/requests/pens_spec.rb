require 'rails_helper'

RSpec.describe 'Pens API', type: :request do
  # initialize test data
  let!(:users) { create_list(:user, 10) }
  let!(:materials) { create_list(:material, 10) }
  let!(:grinds) { create_list(:grind, 10) }
  let!(:nibs) { create_list(:nib, 10) }

  let!(:pens) { create_list(:pen, 10) }
  let(:pen_id) { Pen.first.id }

  # Test suite for GET /pens
  describe 'GET /pens' do
    # make HTTP get request before each example
    before { get '/pens' }

    it 'returns pens' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /pens/:id
  describe 'GET /pens/:id' do
    before { get "/pens/#{pen_id}" }

    context 'when the record exists' do
      it 'returns the pen' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(pen_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:pen_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Pen/)
      end
    end
  end

  # Test suite for POST /pens
  describe 'POST /pens' do
    # valid payload
    let(:valid_attributes) { { model: 'Learn Elm', user_id: '1', nib_id: '1', lent_out: true } }

    context 'when the request is valid' do
      before { post '/pens', params: valid_attributes }

      it 'creates a pen' do
        expect(json['model']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/pens', params: { model: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      # it 'returns a validation failure message' do
      #   expect(response.body)
      #     .to match(/Validation failed: Created by can't be blank/)
      # end
    end
  end

  # Test suite for PUT /pens/:id
  describe 'PUT /pens/:id' do
    let(:valid_attributes) { { model: 'Shopping' } }

    context 'when the record exists' do
      before { put "/pens/#{pen_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /pens/:id
  describe 'DELETE /pens/:id' do
    before { delete "/pens/#{pen_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end