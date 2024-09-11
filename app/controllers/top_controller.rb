class TopController < ApplicationController
  def index
  end
  def login
    redirect_to login_path
  end
end
