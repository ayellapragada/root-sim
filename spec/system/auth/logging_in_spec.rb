require 'system_helper'

RSpec.describe 'Logging In', type: :system do
  scenario 'Logging in as a user' do
    user = create(:user, email: 'test@example.com', password: '123456')
    login_as(user)

    visit root_path

    expect(page).to have_content('Welcome.')
  end
end
