require 'game'

describe Game do
  let(:game) { double :game }

  it 'checks players score' do
    player = Game.new
    player.player_score
    expect(player.player_score).to eq 'Rock'
  end

  it 'returns win result' do
    player = Game.new
    player.player_score
    expect(player.result1).to eq "You won!"
  end
end
