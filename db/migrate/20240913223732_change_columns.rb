class ChangeColumns < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :name, :string
    add_column :clients, :last_name, :string

  end
end
