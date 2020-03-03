require_relative '../snap_game.rb'
require_relative '../card.rb'

describe Card do
  test_card = Card.new
  describe '#initialize' do
    [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace'].include? test_card.card_number
  end
end

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
end
