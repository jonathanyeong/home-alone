puts "Creating a new trainer"
trainer = Trainer.create!(email: "doggyowner@anxiety.com", password: "password", password_confirmation: "password")
puts "Adding dog for the trainer: #{trainer.email}"
dog = trainer.dogs.create!(name: "Albie")
# puts "Creating some step templates"
# template_1 = TrainingStepTemplate.create!(description: "Walk to FD, turn door handle without opening the door, come back")
# template_2 = TrainingStepTemplate.create!(description: "Exit FD (close FD fully) immediately return")
# # TODO: Figure out how to add a template variable for the time, that will be filled in by the training step.
# template_3 = TrainingStepTemplate.create!(description: "Exit FD (close FD fully), wait in place. Return at 10 seconds")
puts "Creating a training session"
training_session = TrainingSession.create!(started_at: DateTime.now, trainer_id: trainer.id, dog_id: dog.id)
puts "Adding steps to the training session"
training_session.training_steps.create!(description: "Walk to FD, turn door handle without opening the door, come back")
training_session.training_steps.create!(description: "Exit FD (close FD fully) immediately return")
training_session.training_steps.create!(description: "Exit FD (close FD fully), wait in place. Return at 10 seconds")
