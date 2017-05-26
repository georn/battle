class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1

  end


  def attack(player)
    player.receive_damage
    switch_turns
  end

  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end

  private

  def switch_turns
    @turn == player_1 ? @turn = player_2 : @turn = player_1
  end

end
