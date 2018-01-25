# spec/requests/bt-api_spec.rb
require 'rails_helper'

RSpec.describe 'BT API', type: :request do
  #initialize test data
  let!(:requests) { create_list(:request, 10) }
  let(:request_id) { requests.first.id }

  # test suite for /GET requests
  describe 'GET /requests' do
    # make HTTP get request before each example
    before { get '/requests' }
    
    it 'returns requests' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  #test for /GET/:id'
  describe 'GET /requests/:id' do
    before { get "/requests/#{request_id}" }

       context 'when the record exists' do
         it 'returns the request' do
           expect(json).not_to be_empty
           expect(json['id']).to eq(request_id)
         end

         it 'returns status code 200' do
           expect(response).to have_http_status(200)
         end
       end

        context 'when the record does not exist' do
          let(:request_id) { 100 }

          it 'returns status code 404' do
            expect(response).to have_http_status(404)
          end

          it 'returns a not found message' do
            expect(response.body).to match(/couldn't find Request/)
          end
        end
      end

  # test for POST
  describe 'POST /requests' do
    #valid payload
    let(:valid_attributes) { { detail: 'something that isnt even a bug', requester: 'MN' } }

    context 'when the request is valid' do
      before { post '/requests', params: valid_attributes }

      it 'creates a request' do
        exepct(json['detail']).to eq('something that isnt even a bug')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/requests', params: { title: 'NO' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
        .to match(/Validation failed: Requester can't be blank/)
      end
    end
  end

  # test for PUT
  describe 'PUT /requests/:id' do
    let(:valid_attributes) { { detail: 'Something that is a bug' } }

    context 'when the record exists' do
      before { put "/requests/#{request_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns the satus code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  #test for DELETE
  describe 'DELETE /requests/:id' do
    before { delete "/requests/#{request_id}" }

    it 'returns the status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end

  
