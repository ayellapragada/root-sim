require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /welcome" do
    it 'loads landing page' do
      get root_path

      expect(response).to have_http_status(200)
      expect(response.body).to include('A slightly better way to learn how to play Root')
    end

    context 'when logged in' do
      it 'redirects to home page' do
        sign_in(create(:user))

        get root_path

        expect(response).to have_http_status(200)
        expect(response.body).to include('Hello! Welcome.')
      end
    end
  end
end
