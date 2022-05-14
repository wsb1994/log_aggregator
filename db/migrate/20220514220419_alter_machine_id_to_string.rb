class AlterMachineIdToString < ActiveRecord::Migration[7.0]
  def change
    change_column :logs, :machine_id, :text
  end
end
