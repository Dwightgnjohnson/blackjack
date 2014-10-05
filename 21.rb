deck = []

class Card
attr_accessor :suit, :value, :name


  def initialize(suit, value, name)
    @suit = suit
    @value = value
    @name = name
    @inplay = true
    deck << self
  end

end

require './cards.rb'

  p  Card.all[1].value Card.all[1].name
  p  Card.all[3].value

#
# Card.all.each do |x|
#  puts "#{x.name} is #{x.value}"
# end
#

cards = cards.shuffle
cards.shift #removes first item from array
