class DogsController < ApplicationController
  def index
    @dogs = current_trainer.dogs
  end

  def show
    @dog = current_trainer.dogs.find(params[:id])
    @training_sessions = @dog.training_sessions
  end

  # TODO: create, edit, delete
end