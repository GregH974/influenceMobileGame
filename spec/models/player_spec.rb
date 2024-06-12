require 'rails_helper'

RSpec.describe Player, type: :model do
  describe '#profile' do
    let(:gender) { FactoryBot.create(:gender) }
    let(:user) { FactoryBot.create(:user) }
    let(:valid_attributes) do
      {
        first_name: 'John',
        last_name: 'Doe',
        age: 25,
        gender:,
        user:
      }
    end

    let(:player) { described_class.create!(valid_attributes) }

    context 'when filled with mandatory fields' do
      it 'return true' do
        expect(player).to be_valid
      end
    end

    context 'with missing age' do
      it 'return false' do
        player.age = nil
        expect(player).not_to be_valid(:update)
      end
    end

    context 'with age lower than 18' do
      it 'return false' do
        player.age = 17
        expect(player).not_to be_valid(:update)
      end
    end

    context 'with missing gender' do
      it 'return false' do
        player.gender_id = nil
        expect(player).not_to be_valid(:update)
      end
    end
  end
end
