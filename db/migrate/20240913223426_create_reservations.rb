class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :client, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.boolean :confirmation

      t.timestamps
    end
  end
end
