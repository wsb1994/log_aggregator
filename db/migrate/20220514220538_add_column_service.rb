class AddColumnService < ActiveRecord::Migration[7.0]
  def change
        add_column :logs, :service, :text
  end
end
