require_relative '../lib/player_info'

describe Player do
  subject(:plyr) { Player.new }
  describe '#initialize' do
    it 'should set the array as an empty array' do
      expect(plyr.instance_variable_get(:@moves)).to eq([])
    end
  end
end
