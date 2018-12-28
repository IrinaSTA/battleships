require 'ship'

# ship has to have a size
# ship has to have coordinates
describe Ship do

  let(:ship) { Ship.new(5) }

  it 'can have a size' do
    expect(ship.size).to eq(5)
  end

end
