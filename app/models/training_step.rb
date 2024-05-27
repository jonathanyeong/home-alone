class TrainingStep < ApplicationRecord
  belongs_to :training_step_template
  belongs_to :training_session
  delegate :description, to: :training_step_template
end
