class AddDescriptionFieldToTrainingStep < ActiveRecord::Migration[7.1]
  def change
    add_column :training_steps, :description, :text
  end
end
