class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
