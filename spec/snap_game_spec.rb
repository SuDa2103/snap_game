require_relative '../snap_game.rb'
require_relative '../card.rb'

describe SnapGame do
  test = SnapGame.new

  describe '#reaction' do
    let (:expected_results) do
      [1..5]
    end
    it 'Records a reaction time between 1 and 5 seconds' do
      (test.reaction).between?(1, 5)
    end
  end

  describe '#first_card' do
    it 'Produces an instance of card to begin game' do
      expect(test.first_card).to be_a Card
    end
  end

  describe '#play' do
    test.reaction
    test.first_card
    test.first_card.card_number = 6
    test.play
    test.next_card.card_number = 6
    it 'Puts snap when the numbers of two consecutive cards match' do
      expect(test.play). to eq('SNAP!')
    end
  end
end
