# spec/requests/bt-api_spec.rb
require 'rails_helper'
require 'faker'

RSpec.describe 'BT API', type: :course do
  #initialize test data
  let!(:course) { create_list(:course, 10) }
  let(:course_id) { courses.first.id }

  # test suite for /GET requests
  describe 'GET /courses' do
    # make HTTP get request before each example
    before { get '/courses' }
    
    it 'returns requests' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(course).to have_http_status(200)
    end
  end

  #test for /GET/:id'
  describe 'GET /courses/:id' do
    before { get "/courses/#{course_id}" }

       context 'when the record exists' do
         it 'returns the course' do
           expect(json).not_to be_empty
           expect(json['id']).to eq(course_id)
         end

         it 'returns status code 200' do
           expect(response).to have_http_status(200)
         end
       end

        context 'when the record does not exist' do
          let(:course_id) { 100 }

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
    let(:valid_attributes) { { courseName: 'Learn Stuff', clientName: 'Company Inc' } }

    context 'when the request is valid' do
      before { post '/courses', params: valid_attributes }

      it 'creates a request' do
        exepct(json['courseName']).to eq('Learn Stuff')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/courses', params: { courseName: 'Learn Nothing' } }

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
  describe 'PUT /courses/:id' do
    let(:valid_attributes) { { courseName: 'Learn More Stuff' } }

    context 'when the record exists' do
      before { put "/courses/#{course_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns the satus code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  #test for DELETE
  describe 'DELETE /courses/:id' do
    before { delete "/courses/#{course_id}" }

    it 'returns the status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end

  
