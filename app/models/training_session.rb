# == Schema Information
#
# Table name: training_sessions
#
#  id              :bigint           not null, primary key
#  completed_at    :datetime
#  longest_absence :integer
#  rating          :integer
#  started_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  dog_id          :bigint           not null
#  trainer_id      :bigint           not null
#
# Indexes
#
#  index_training_sessions_on_dog_id      (dog_id)
#  index_training_sessions_on_trainer_id  (trainer_id)
#
# Foreign Keys
#
#  fk_rails_...  (dog_id => dogs.id)
#  fk_rails_...  (trainer_id => trainers.id)
#
class TrainingSession < ApplicationRecord
  belongs_to :trainer
  belongs_to :dog
  has_many :training_steps
  accepts_nested_attributes_for :training_steps, reject_if: lambda { |attributes| attributes['description'].blank? }

end
