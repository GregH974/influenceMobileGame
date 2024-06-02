class CreateOfferAgeGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :offer_age_groups do |t|
      t.references :offer, null: false
      t.references :age_group, null: false

      t.timestamps
    end

    add_foreign_key :offer_age_groups, :offers, name: :fk_offer_age_groups_offers, on_update: :cascade, on_delete: :cascade
    add_foreign_key :offer_age_groups, :age_groups, name: :fk_offer_age_groups_age_groups, on_update: :cascade, on_delete: :cascade
  end
end
