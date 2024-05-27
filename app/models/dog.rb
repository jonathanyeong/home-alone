class Dog < ApplicationRecord
  belongs_to :trainer
  has_many :training_sessions
end
