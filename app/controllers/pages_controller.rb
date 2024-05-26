class PagesController < ApplicationController
  before_action :authenticate_trainer!
  def index
  end
end
