require 'game'

describe Game do
  let(:game) { Game.new }

  it 'is created with a board' do
    expect(game.board).to be_an_instance_of(Board)
  end
end
