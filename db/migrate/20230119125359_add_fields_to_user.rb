class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    add_column :users, :identification, :string
    add_column :users, :phone, :string
    add_column :users, :birthday, :date
  end
end
