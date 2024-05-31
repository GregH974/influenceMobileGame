class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    drop_table :players
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end