class AddTrainerReferenceToTrainingStepTemplates < ActiveRecord::Migration[7.1]
  def change
    add_reference :training_step_templates, :trainer
  end
end
