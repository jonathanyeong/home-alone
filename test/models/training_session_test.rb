# == Schema Information
#
# Table name: training_sessions
#
#  id              :bigint           not null, primary key
#  started_at      :datetime
#  completed_at    :datetime
#  rating          :integer
#  longest_absence :integer
#  trainer_id      :bigint           not null
#  dog_id          :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class TrainingSessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
