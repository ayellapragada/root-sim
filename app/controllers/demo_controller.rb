class DemoController < ApplicationController
  def show
    email = "test#{params[:id]}@example.com"
    user = User.find_by(email: email)
    if user
      user.remember_me!
      sign_in(:user, user)
      redirect_to root_path, success: 'Logged in as Demo User'
    else
      redirect_to new_user_session_path, error: 'No Existing Demo User!'
    end
  end
end
