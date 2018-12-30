require 'ship'

describe Ship do
  let(:ship) { Ship.new(5, %w[a1 a2 a3 a4 a5]) }

  it 'can have a size' do
    expect(ship.size).to eq(5)
  end

  it 'can have a position on the board' do
    expect(ship.position).to eq(%w[a1 a2 a3 a4 a5])
  end
end
