class Offer < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================
  GROUP_AGE = [
    [18, 24], [25, 34], [35, 44], [45, 54], [55, 64], [65, 100]
  ].freeze

  # == Attributes ===========================================================

  # == Callbacks ============================================================

  # == Relationships ========================================================

  # == Validations ==========================================================
  validates :title, presence: true
  validates :description, presence: true
  validates :score_to_achieve, presence: true
  validates :min_age, presence: true
  validates :max_age, presence: true
  validates :gender, presence: true

  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================
end
