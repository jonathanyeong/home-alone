class TrainingSessionsController < ApplicationController
  def index
    @training_sessions = TrainingSession.where(trainer_id: current_trainer.id)
  end

  def new
    if params[:dog_name]
      @dog = current_trainer.dogs.find_by(name: params[:dog_name])
    else
      @dogs = current_trainer.dogs
    end
    @training_session = TrainingSession.new
    2.times { @training_session.training_steps.build }
  end

  def create
    dog = current_trainer.dogs.find(training_session_params["dog_id"])
    unless dog
      flash[:error] = "Dog not found!"
      redirect_to new_training_session_path
    end
    training_session = dog.training_sessions.new(training_session_params.merge(trainer_id: current_trainer.id))
    if training_session.save
      training_session.save
      redirect_to training_sessions_path
    else
      render "new"
    end
  end

  def show
    @training_session = TrainingSession.where(id: params[:id], trainer_id: current_trainer.id).first
  end

  private

  def training_session_params
    params.require(:training_session).permit(:dog_id, training_steps_attributes: [:id, :description])
  end
end