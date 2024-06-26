class OfferPlayer < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Callbacks ============================================================

  # == Relationships ========================================================
  belongs_to :offer
  belongs_to :player

  # == Validations ==========================================================
  validates :email_send, inclusion: { in: [true, false] }
  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================
  self.primary_keys = :offer_id, :player_id
end
