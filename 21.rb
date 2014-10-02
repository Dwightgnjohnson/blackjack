require ''./cards.rb'

class Card
attr_accessor :suit, :value, :name
  @@deck = []

  def self.all
    @@deck
  end

  def initialize(suit, value, name)
    @suit = suit
    @value = value
    @name = name
    @inplay = true
    @@deck << self
  end



end

Card.all.each do |x| p x.name end
