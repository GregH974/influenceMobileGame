class Player < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Callbacks ============================================================

  # == Relationships ========================================================
  belongs_to :user
  belongs_to :gender
  has_many :offer_players
  has_many :offers, through: :offer_players

  # == Validations ==========================================================
  validates :age, presence: true, numericality: { only_integer: true }, comparison: { greater_than: 18 }
  validates :gender_id, presence: true

  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================

  def targeted_offers
    age_group = AgeGroup.find_by('min_age <= ? AND max_age >= ?', self.age, self.age)

    return Offer.includes(:offer_age_groups).includes(:offer_genders).where(offer_age_groups: {age_group: age_group}).where(offer_genders: {gender: self.gender})
  end

end
