class CreateGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :genders do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end

    remove_column :players, :gender
    add_reference :players, :gender, foreign_key: true
  end
end
