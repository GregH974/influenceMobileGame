class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string, default: 'player'
    remove_column :users, :age, :integer
    remove_column :users, :gender, :string
  end
end
