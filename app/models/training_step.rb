# == Schema Information
#
# Table name: training_steps
#
#  id                        :bigint           not null, primary key
#  notes                     :text(65535)
#  training_step_template_id :bigint           not null
#  training_session_id       :bigint           not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
class TrainingStep < ApplicationRecord
  belongs_to :training_step_template
  belongs_to :training_session
  delegate :description, to: :training_step_template
end
