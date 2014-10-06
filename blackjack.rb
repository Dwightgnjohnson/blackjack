
class Card
  attr_accessor :suit, :value, :name

  @@cards = [] #a class instance to create an array to hold all pandas
  def self.all #OR Panda.all within the class
      @@cards #exposes the instance to the outside world of class
  end

  def initialize(suit, value, name)

    @name = name
    @suit = suit
    @value = value
    @@cards << self
  end

end

require_relative 'cards'

class Deck
  def initialize
  end

  def new_deck
    Card.all.shuffle
  end
end

newdeck = Deck.new
newdeck = newdeck.new_deck

puts "Dealer hand, 1 of 2 cards shown: #{newdeck[0].value} of #{newdeck[0].suit}."

puts "Your hand: #{newdeck[2].value} of #{newdeck[2].suit} and #{newdeck[3].value} of #{newdeck[3].suit}. Total of #{newdeck[2].value + newdeck[3].value}\n\n"

dealer_hand = newdeck.shift.value + newdeck.shift.value
player_hand = newdeck.shift.value + newdeck.shift.value

until dealer_hand >= 21 || player_hand >= 21 do
  puts "Would you like to hit or stand?"
  input = gets.chomp

  if input == "stand"
    dealer_hand += newdeck.shift.value until dealer_hand >= 16
      puts "Your hand: #{player_hand}"
      puts "The Dealers hand: #{dealer_hand}"
      exit
  end

  if input  == "hit"
      puts "#{newdeck.shift.value} of #{newdeck.shift.suit}"
      player_hand += newdeck.shift.value
      puts "Your total: #{player_hand}"
  end

  if input == "exit"
    exit
  end
end

if player_hand == 21 && dealer_hand == 21
  puts "You both tied with 21"
elsif dealer_hand == 21
  puts "Dealer Won. You Lost with #{player_hand}"
elsif player_hand == 21
  puts "You Won with #{player_hand}!"
elsif player_hand > 21
  puts "You Lost with #{player_hand}"
elsif dealer_hand > 21
  puts "Dealer over - YOU WON"
elsif dealer_hand >= player_hand
  puts "Dealer Won"
elsif player_hand >= dealer_hand
  puts "You Won with #{player_hand}"
end
