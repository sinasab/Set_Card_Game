#Class Card
=begin
	Class Card for the game of Set.  Has the properties of shape
	number,color and shade.
	
=end
class Card
	def initialize()
	#Constructor
		@shape = nil
		@number	= nil
		@shade = nil
		@color = nil
	end

	#Displays the card with each attribute on a line
	def display()
		puts @shape
		puts @number
		puts @shade
		puts @color
	end
	#getter and setter methods for each property of a card.
	attr_accessor :shape
	attr_accessor :number
	attr_accessor :shade
	attr_accessor :color

end