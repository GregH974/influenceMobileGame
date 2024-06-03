class DeleteAgeInOffer < ActiveRecord::Migration[7.0]
  def change
    remove_column :offers, :min_age
    remove_column :offers, :max_age
    remove_column :offers, :gender
  end
end
