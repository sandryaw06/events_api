class AddReferencesColumns < ActiveRecord::Migration[7.1]
  def change

    remove_column :events, :participants
    #add_column :events, :reservation, foreing_key: true
  end
end
