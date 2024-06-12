class User < ApplicationRecord
  # == Extensions ===========================================================
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # == Constants ============================================================

  # == Attributes ===========================================================
  enum role: { player: 0, admin: 1 }

  # == Callbacks ============================================================
  after_create :send_user_welcome_mail

  # == Relationships ========================================================
  has_many :players

  # == Validations ==========================================================
  validates :email, format: URI::MailTo::EMAIL_REGEXP

  # == Scopes ===============================================================

  # == Instance Methods =====================================================

  # == Class Methods ========================================================
  def send_user_welcome_mail
    UserMailer.with(user: self).welcome_email.deliver_now
  end
end
