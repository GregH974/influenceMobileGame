class CreateOfferGenders < ActiveRecord::Migration[7.0]
  def change
    create_table :offer_genders do |t|
      t.references :offer, null: false
      t.references :gender, null: false

      t.timestamps
    end

    add_foreign_key :offer_genders, :offers, name: :fk_offer_genders_offers, on_update: :cascade, on_delete: :cascade
    add_foreign_key :offer_genders, :genders, name: :fk_offer_genders_genders, on_update: :cascade, on_delete: :cascade
  end
end
