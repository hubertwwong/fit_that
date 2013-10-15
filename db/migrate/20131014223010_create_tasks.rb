class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.references :task_category, index: true
      t.references :task_type, index: true
      t.string :notes
      t.integer :length
      t.integer :speed
      t.integer :weight
      t.integer :reps
      t.datetime :started_at

      t.timestamps
    end
  end
end
