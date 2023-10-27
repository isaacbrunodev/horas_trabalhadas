class CreateSummaryReports < ActiveRecord::Migration[7.0]
  def change
    create_table :summary_reports do |t|
      t.references :project, null: false, foreign_key: true
      t.references :task_type, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
