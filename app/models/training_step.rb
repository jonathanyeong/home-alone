class TrainingStep < ApplicationRecord
  has_one :training_step_template
  belongs_to :training_session
end
