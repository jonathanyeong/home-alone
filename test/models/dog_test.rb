# == Schema Information
#
# Table name: dogs
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  trainer_id :bigint           not null
#
# Indexes
#
#  index_dogs_on_trainer_id  (trainer_id)
#
# Foreign Keys
#
#  fk_rails_...  (trainer_id => trainers.id)
#
require "test_helper"

class DogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
