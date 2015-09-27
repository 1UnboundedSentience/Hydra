class HomeController < ApplicationController
  def index
    if user_signed_in?
      # AWS.config(
      #   :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      #   :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'])
      # end
      #render 'home/profile.html.erb'
      redirect_to key_data_path
    end
  end
end
