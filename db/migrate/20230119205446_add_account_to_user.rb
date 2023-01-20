class AddAccountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :account_number, :string
    add_column :users, :account_balance, :float, default: 0.00
  end
end
