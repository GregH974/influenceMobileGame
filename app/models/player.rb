class Player < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Callbacks ============================================================

  # == Relationships ========================================================
  belongs_to :user
  belongs_to :gender

  # == Validations ==========================================================
  validates :age, presence: true, numericality: { only_integer: true }, comparison: { greater_than: 18 }
  validates :gender_id, presence: true

  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================

end
