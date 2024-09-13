class AddReferenceReservationsToEvent < ActiveRecord::Migration[7.1]
  def change
    add_reference :events, :reservations
    add_reference :clients, :reservations
  end
end
