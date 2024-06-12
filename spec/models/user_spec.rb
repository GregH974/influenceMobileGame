require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#authenticate' do
    let(:user) { build(:user, password: 'password123') }

    context 'with correct password' do
      it 'returns the user' do
        expect(user.valid_password?('password123')).to be(true)
      end
    end

    context 'with incorrect password' do
      it 'returns false' do
        expect(user.valid_password?('wrongpassword')).to be(false)
      end
    end

    context 'with correct password and email' do
      it 'return a valid user' do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end
    end

    context 'when a user is not created' do
      it 'with invalid email' do
        user = FactoryBot.build(:user, email: 'invalid_email')
        expect(user).not_to be_valid
      end

      it 'with short password' do
        user = FactoryBot.build(:user, password: 'short', password_confirmation: 'short')
        expect(user).not_to be_valid
      end
    end
  end
end
