class HomeController < ApplicationController
  def index
    p user_signed_in?
    if user_signed_in?
      p user_signed_in?
      p "*********"
    end
  end
end
