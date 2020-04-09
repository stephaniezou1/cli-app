class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :organization_id
      t.string :name
      t.string :requirements
      t.text :content

      t.timestamps
    end
  end
end
