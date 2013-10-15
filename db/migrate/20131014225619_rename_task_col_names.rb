class RenameTaskColNames < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.rename :notes, :note
      t.rename :reps, :rep
    end
  end
end
