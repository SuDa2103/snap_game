class Card
  attr_reader :card, :card_number
  def initialize
    suits = %w[Hearts Diamonds Clubs Spades]
    numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
    @card_suit = suits.sample
    @card_number = numbers.sample
    @card = [@card_number, @card_suit]
  end
end

card1 = Card.new
puts card1.card
puts 'Do you want to select another card (select y for yes or n for no)?'
answer = gets.chomp
if answer == 'y'
  card2 = Card.new
  puts card2.card
elsif answer == 'n'
  puts 'This game has now ended. Goodbye!'
else
  puts "We didn't catch that. Please select y to draw a card or n to end game"
end

# Each card should have a .number and a .suit method. Attribute readers for number and suits. Then we can compare the numbers and suits of different instances of Card
#Loop it so the game keeps on going
# Make use of @ signs and class variables
