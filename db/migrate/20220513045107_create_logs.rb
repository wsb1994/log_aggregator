class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.text :message
      t.boolean :is_error
      t.string :machine_id

      t.timestamps
    end
  end
end
