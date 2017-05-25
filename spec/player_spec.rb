require_relative '../lib/player.rb'

describe Player do
  subject(:guillermo) { Player.new('Guillermo') }

  describe '#name' do
    it 'returns the Player\'s name' do
      expect(guillermo.name).to eq 'Guillermo'
    end
  end
end
