# == Schema Information
#
# Table name: dogs
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  slug       :string(255)
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
class Dog < ApplicationRecord
  belongs_to :trainer
  has_many :training_sessions
  before_create ->(dog) { dog.slug = dog.name.downcase.gsub(/[^\w\d\s]/, "").gsub(/\s/u, "-") }

  def to_param
    slug
  end
end
