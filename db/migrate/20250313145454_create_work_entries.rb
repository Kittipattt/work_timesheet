class CreateWorkEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :work_entries do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :break_duration
      t.integer :total_hours

      t.timestamps
    end
  end
end
