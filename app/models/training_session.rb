class TrainingSession < ApplicationRecord
  belongs_to :trainer
  belongs_to :dog
  has_many :training_steps
end
