class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date_start
      t.datetime :date_finish
      t.integer :total
      t.references :responsable, null: false, foreign_key: true
      t.string :participants

      t.timestamps
    end
  end
end
