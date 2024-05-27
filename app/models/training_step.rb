# == Schema Information
#
# Table name: training_steps
#
#  id                  :bigint           not null, primary key
#  description         :text(65535)
#  notes               :text(65535)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  training_session_id :bigint           not null
#
# Indexes
#
#  index_training_steps_on_training_session_id  (training_session_id)
#
# Foreign Keys
#
#  fk_rails_...  (training_session_id => training_sessions.id)
#
class TrainingStep < ApplicationRecord
  belongs_to :training_session
end
