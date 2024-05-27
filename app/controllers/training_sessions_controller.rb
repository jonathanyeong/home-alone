class TrainingSessionsController < ApplicationController
  def new
    @dog = Dog.find(params[:dog_id])
    @training_session = @dog.training_sessions.new
    2.times { @training_session.training_steps.build }
  end

  def create
    dog = Dog.find(params[:dog_id])
    dog.training_sessions.create(training_session_params, trainer_id: current_trainer.id)
  end

  private

  def training_session_params
    params.require(:training_session).permit(training_steps_attributes: [:id, :description])
  end
end