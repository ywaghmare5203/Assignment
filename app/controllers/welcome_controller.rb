class WelcomeController < ApplicationController
  def index
    render json: {message: "Welcome to Rently Software"}
  end
end
