class TrainingSession < ApplicationRecord
  belongs_to :trainer
  belongs_to :dog
end
