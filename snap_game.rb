require_relative 'card.rb'

class SnapGame
  def initialize
    puts '----------------------------------------------'
    puts "Let's Play Snap!"
    puts '----------------------------------------------'
  end

  def reaction
    puts 'Choose Computer Reaction reaction time in seconds'
    puts 'Enter number between 1 and 5'
    @time = gets.chomp.to_i
    @reaction_time = @time
    # Or for a reaction time that is random within a specified range:
    # @reaction_time = rand(0..5)
  end

  def first_card
    puts '----------------------------------------------'
    puts 'The first card is..'
    @card_prev = Card.new
    puts "#{@card_prev.card_number} of #{@card_prev.card_suit.capitalize}"
    @card_prev
  end

  def play
    loop do
      if @answer == 'n' || @snap == true
        break
      end

      puts '----------------------------------------------'
      puts 'Do you want to select another card (select y for yes or n for no)?'
      @answer = gets.chomp
      sleep(@reaction_time)
      self.next_card
    end
    "SNAP!"
  end

  def next_card
    if @answer == 'y'
      @card_next = Card.new
      puts '----------------------------------------------'
      puts 'Your next card is...'
      puts "#{@card_next.card_number} of #{@card_next.card_suit}"
      self.check
    elsif @answer == 'n'
      puts 'This game has now ended. Goodbye!'
    else
      puts "We didn't catch that. Please select y to draw a card or n to end game"
    end
    @card_next
  end

  def check
    if @card_next.card_number == @card_prev.card_number
      @snap = true
      puts 'SNAP!'
      puts 'GAME OVER!'
    else
      @card_prev = @card_next
      @snap = false
    end
  end
end

snap = SnapGame.new
snap.reaction
snap.first_card
snap.play
