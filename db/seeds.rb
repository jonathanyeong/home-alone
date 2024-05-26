puts "Creating a new trainer"
trainer = Trainer.create!(email: "doggyowner@anxiety.com", password: "password", password_confirmation: "password")
puts "Adding dog for the trainer: #{trainer.email}"
trainer.dogs.create!(name: "Albie")
