class AddColunsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :genre, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :cpf, :string
    add_column :users, :date_of_birth, :date
  end
end
