# == Schema Information
#
# Table name: training_step_templates
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  trainer_id  :bigint
#
class TrainingStepTemplate < ApplicationRecord
  belongs_to :trainer
end
