class CreateTrainingStepTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :training_step_templates do |t|
      t.text :description

      t.timestamps
    end
  end
end
