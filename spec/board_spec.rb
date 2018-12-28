require 'board'

describe Board do

  let(:board) { Board.new(2, 2) }
  let(:all_locations) { ['a1', 'a2', 'b1', 'b2'] }

  it 'can be set up with length and width' do
    expect(board.all_locations).to eq(all_locations)
  end
end
