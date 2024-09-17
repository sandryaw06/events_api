class ChangevariablesNotNull < ActiveRecord::Migration[7.1]
  def change

    remove_column(:people, :events_id)
    add_reference(:responsables, :event_id, null: true)

  end
end
