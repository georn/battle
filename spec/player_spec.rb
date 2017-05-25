require_relative '../lib/player.rb'

describe Player do
  subject(:player_1) { described_class.new('Guillermo') }
  subject(:player_2) { described_class.new('Enrique') }

  describe '#name' do
    it 'returns the Player\'s name' do
      expect(player_1.name).to eq 'Guillermo'
    end
  end

  describe '#hit_points' do
    it 'returns the Player\'s hit points' do
      expect(player_2.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'the player hit points receive damage' do
      expect { player_2.receive_damage }.to change { player_2.hit_points }.by(-10)
    end
  end
end
