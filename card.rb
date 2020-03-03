class Card
  attr_reader :card, :card_suit, :card_number
  def initialize
    suits = %w[♥ ♦ ♣ ♠]
    numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
    @card_suit = suits.sample
    @card_number = numbers.sample
    @card = [@card_number, @card_suit]
  end
end
