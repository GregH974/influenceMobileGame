class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  GENDER = [ 'male', 'female', 'non_binary', 'other' ]
  enum gender: Hash[GENDER.map { |c| [c, c.to_s] }]

  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, on: :update
  validates :gender, presence: true, on: :update
end
