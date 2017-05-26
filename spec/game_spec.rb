require_relative '../lib/game.rb'

describe Game do


  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'accepts the player_1 object' do
    expect(game.player_1).to eq(player_1)
  end

  it 'accepts the player_2 object' do
    expect(game.player_2).to eq(player_2)
  end

  describe '#attack' do

    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

end
