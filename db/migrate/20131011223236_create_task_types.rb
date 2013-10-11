class CreateTaskTypes < ActiveRecord::Migration
  def change
    create_table :task_types do |t|
      t.string :name
      t.references :task_category_id, index: true

      t.timestamps
    end
  end
end
