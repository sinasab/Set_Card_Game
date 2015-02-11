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
	#sets shape
	def setShape(shape)
		@shape = shape
	end
	#sets number
	def setNumber(number)
		@number = number
	end
	#sets shade
	def setShade(shade)
		@shade = shade
	end
	#sets color
	def setColor(color)
		@color = color
	end
	#returns shape
	def getShape
		return @shape
	end
	#returns number
	def getNumber
		return @number 
	end
	#returns shade
	def getShade
		return @shade
	end
	# returns color
	def getColor
		return @color
	end
end
