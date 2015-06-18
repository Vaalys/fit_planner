class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :weight
      t.integer :waist_size
      t.integer :height
      t.integer :body_fat_p
      t.text :goal
      t.text :image_url
      t.integer :bmi
      t.integer :rep_max
      t.integer :fastest_mile
      t.integer :longest_run

      t.timestamps null: false
    end
  end
end
