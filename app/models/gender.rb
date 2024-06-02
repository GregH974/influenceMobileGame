class Gender < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Callbacks ============================================================
  # before_save :generate_slug

  # == Relationships ========================================================
  has_many :offer_genders
  has_many :offers, through: :offer_genders

  # == Validations ==========================================================
  validates :name, presence: true
  validates :slug, presence: true

  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================
  private
    def generate_slug
      self.slug = name
    end
end
