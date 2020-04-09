class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :volunteer_id
      t.integer :task_id

      t.timestamps
    end
  end
end
