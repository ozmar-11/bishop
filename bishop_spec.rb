require_relative 'bishop'

RSpec.describe Bishop do
  context 'When the target cell has different color than the initial one' do
    let(:bishop) { Bishop.new }

    it 'Return -1' do
      expect(bishop.total_movements_to_arrive_position(1, 2)).to eq(-1)
    end
  end

  context 'When the target cell and the initial one has the same color' do
    let(:bishop) { Bishop.new }

    it 'Return 1 if the target is 1 jump away in the up left direction' do
      expect(bishop.total_movements_to_arrive_position(46, 10)).to eq(1)
    end

    it 'Return 1 if the target is 1 jump away in the up right direction' do
      expect(bishop.total_movements_to_arrive_position(44, 16)).to eq(1)
    end

    it 'Return 1 if the target is 1 jump away in the down left direction' do
      expect(bishop.total_movements_to_arrive_position(5, 33)).to eq(1)
    end

    it 'Return 2 if the target is 2 jumps away in the down right direction' do
      expect(bishop.total_movements_to_arrive_position(37, 62)).to eq(2)
    end
  end
end
