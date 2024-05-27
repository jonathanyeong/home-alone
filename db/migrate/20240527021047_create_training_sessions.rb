class CreateTrainingSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :training_sessions do |t|
      t.datetime :started_at
      t.datetime :completed_at
      t.integer :rating
      t.integer :longest_absence
      t.references :trainer, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
