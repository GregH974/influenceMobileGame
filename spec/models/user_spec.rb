require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#authenticate" do
    let(:user) { build(:user, password: "password123") }

    context "with correct password" do
      it "returns the user" do
        expect(user.valid_password?("password123")).to eq(true)
      end
    end

    context "with incorrect password" do
      it "returns false" do
        expect(user.valid_password?("wrongpassword")).to eq(false)
      end
    end

    context "with correct password and email" do
      it 'should create a valid user' do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end
    end

    it 'should not create a user with invalid email' do
      user = FactoryBot.build(:user, email: 'invalid_email')
      expect(user).not_to be_valid
    end

    it 'should not create a user with short password' do
      user = FactoryBot.build(:user, password: 'short', password_confirmation: 'short')
      expect(user).not_to be_valid
    end
  end
end
