class PagesController < ApplicationController
  skip_before_action :authenticate_trainer!
  def index
  end
end
