class CreateTaskTypes < ActiveRecord::Migration[7.0]
  def up
    create_table :task_types do |t|
      t.string :name, null: false, limit: 50
      t.belongs_to :project, null: false
      t.timestamps
    end
    add_index :task_types, [:project_id, :name], unique: true
  end

  def down
    drop_table :task_types
  end
end
