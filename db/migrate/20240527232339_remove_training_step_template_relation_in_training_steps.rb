class RemoveTrainingStepTemplateRelationInTrainingSteps < ActiveRecord::Migration[7.1]
  def change
    remove_reference :training_steps, :training_step_template, index: true, foreign_key: true
  end
end
