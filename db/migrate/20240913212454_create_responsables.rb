class CreateResponsables < ActiveRecord::Migration[7.1]
  def change
    create_table :responsables do |t|
      t.string :name
      t.string :last_name

      t.timestamps
    end
  end
end
