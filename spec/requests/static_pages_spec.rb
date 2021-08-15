require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /landing_page" do
    it 'loads landing page'

    context 'when logged in' do
      it 'redirects to home page'
    end
  end
end
