class OfferPlayer < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Callbacks ============================================================

  # == Relationships ========================================================
  belongs_to :offer
  belongs_to :player

  # == Validations ==========================================================

  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================
end
