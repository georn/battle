require_relative '../lib/player.rb'

describe Player do
  subject(:guillermo) { Player.new('Guillermo') }
  subject(:enrique) { Player.new('Enrique') }

  describe '#name' do
    it 'returns the Player\'s name' do
      expect(guillermo.name).to eq 'Guillermo'
    end
  end

  describe '#hit_points' do
    it 'returns the Player\'s hit points' do
      expect(guillermo.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(enrique).to receive(:receive_damage)
      guillermo.attack(enrique)
    end
  end

  describe '#reduce_damage' do
    it 'reduces the player hit points' do
      expect { enrique.receive_damage }.to change { enrique.hit_points }.by(-10)
    end
  end
end
