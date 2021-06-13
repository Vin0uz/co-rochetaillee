class CreateTaskLists < ActiveRecord::Migration[6.1]
  def change
    create_table :task_lists do |t|
      t.boolean :status
      t.string :name

      t.timestamps
    end
  end
end
