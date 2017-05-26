require_relative '../lib/game.rb'

describe Game do


  let(:player_1) { double(:player_1, name: 'Roland') }
  let(:player_2) { double(:player_2, name: 'Guillermo') }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'accepts the player_1 object' do
    expect(game.player_1).to eq(player_1)
  end

  it 'accepts the player_2 object' do
    expect(game.player_2).to eq(player_2)
  end

  it 'initialize the turn with player_1' do
    expect(game.turn.name).to eq(player_1.name)
  end

  describe '#attack' do

    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end

    it 'switches the turn' do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
      expect(game.turn.name).to eq(player_2.name)
    end

  end

  describe '#opponent_of' do
    it 'returns the opponent of the player in turn' do
      expect(game.opponent_of(game.turn)).to eq(player_2)
    end
  end

end
