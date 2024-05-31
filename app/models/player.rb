class Player < ApplicationRecord
  # == Extensions ===========================================================

  # == Constants ============================================================
  GENDER = [ 'male', 'female', 'non_binary', 'other' ]

  # == Attributes ===========================================================
  enum gender: Hash[GENDER.map { |c| [c, c.to_s] }]

  # == Callbacks ============================================================

  # == Relationships ========================================================
  belongs_to :user

  # == Validations ==========================================================
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: { message: "must be given please" }, on: :update
  validates :gender, presence: { message: "must be given please" }, on: :update

  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================

end
