class HomeController < ApplicationController
  def index
  end

  def show
    @num = params[:id]
  end
end
