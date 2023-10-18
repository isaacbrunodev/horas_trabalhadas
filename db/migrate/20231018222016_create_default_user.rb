class CreateDefaultUser < ActiveRecord::Migration[7.0]
  def change
    create_table :default_users do |t|

      t.timestamps
    end
  end
end
