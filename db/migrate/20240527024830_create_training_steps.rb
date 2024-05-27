class CreateTrainingSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :training_steps do |t|
      t.text :notes
      t.references :training_step_template, null: false, foreign_key: true
      t.references :training_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
