class CreateTimeLogs < ActiveRecord::Migration[7.0]
  def self.up 
    create_table :time_logs do |t|
      t.belongs_to :user, null: false
      t.belongs_to :task_type, null: false
      t.text :description
      t.date :task_date, null: false 
      t.time :work_hours, null: false     
      t.timestamps
    end
  end

  def self.down
    drop_table :time_logs
  end
end
