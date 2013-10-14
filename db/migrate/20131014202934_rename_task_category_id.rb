class RenameTaskCategoryId < ActiveRecord::Migration
  def change
    change_table :task_types do |t|
      t.rename :task_category_id_id, :task_category_id
    end
  end
end
