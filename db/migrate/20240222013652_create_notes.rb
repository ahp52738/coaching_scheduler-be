class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.integer :satisfaction
      t.text :content
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
