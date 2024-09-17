class ChangevariableName < ActiveRecord::Migration[7.1]
  def change
    rename_index :responsables, 'event_id', 'event'
  end
end
