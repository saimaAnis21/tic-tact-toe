require 'game_logic'

describe Game do
  describe '::validmove' do
    it 'should accept 2 arrays and an integer' do
      expect { Game.validmove(2, [1, 2, 3], [4, 5, 6]) }.to_not raise_error
    end

    it 'Check it returns false when move is already in an array' do
      expect(Game.validmove(2, [1, 2, 3], [4, 5, 6])).to be_falsy
    end

    it 'Check it true when move is not in any array' do
      expect(Game.validmove(9, [1, 2, 3], [4, 5, 6])).to be_truthy
    end

    it 'Check it returns false when move is not in 1-9' do
      expect(Game.validmove(12, [1, 2, 3], [4, 5, 6])).to be_falsy
    end

    it 'Check it returns false when move is a character' do
      expect(Game.validmove('asr', [1, 2, 3], [4, 5, 6])).to be_falsy
    end
  end

  describe '::checkwin' do
    it 'should accept 1 array and an integer' do
      expect { Game.checkwin(2, [1, 2, 3]) }.to_not raise_error
    end

    it 'Check it returns true if the player has a winning move' do
      expect(Game.checkwin(1, [1, 2, 3])).to be_truthy
    end

    it 'Check it returns false if the player has no winning move' do
      expect(Game.checkwin(2, [5, 2, 3])).to be_falsy
    end

  end
end
