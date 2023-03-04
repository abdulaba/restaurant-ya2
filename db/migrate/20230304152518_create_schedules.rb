class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :day
      t.time :open_at
      t.time :close_at
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
