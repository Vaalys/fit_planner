class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.text :description
      t.string :set_count
      t.string :reps
      t.string :weight
      t.text :notes

      t.timestamps null: false
    end
  end
end
