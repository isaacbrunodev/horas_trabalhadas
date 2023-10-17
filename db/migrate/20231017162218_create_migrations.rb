class CreateMigrations < ActiveRecord::Migration[7.0]
  def change
    create_table :migrations do |t|
      t.string :fix_typo

      t.timestamps
    end
  end
end