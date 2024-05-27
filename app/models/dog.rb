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
class Dog < ApplicationRecord
  belongs_to :trainer
  has_many :training_sessions
end
