# == Schema Information
#
# Table name: dogs
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  trainer_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
