#Class Card
class Card
	def initialize()
	#Constructor
	@shape = nil
	@number	= nil
	@shade = nil
	@color = nil
	end

	def display()
	puts @shape
	puts @number
	puts @shade
	puts @color
	end
	
	def setShape(shape)
	@shape = shape
	end

	def setNumber(number)
	@number = number
	end

	def setShade(shade)
	@shade = shade
	end

	def setColor(color)
	@color = color
	end

	def getShape()
	return @shape
	end

	def getNumber()
	return @number
	end

	def getShade()
	return @shade
	end

	def getColor()
	return @color
	end

end

shadeArray = ["solid", "striped","open"]
numberArray = [1,2,3]
shapeArray = ["diamond", "squiggle", "oval"]
colorArray = ["red", "green", "purple"]


=begin
This method is used to create the cards and the playing deck.
Each for loop is for a characteristic of the card(shape, color,etc).
It then adds the card to an array, which will be returned.

@params:  shadeArray:
			Array with the shade characteristic

		  numberArray:
		  	Array with the number characteristic

		  shapeArray:
		  	Array with the shape characteristic

		  colorArray:
		  	Array with the color characteristic

@returns: 
	   deck: An array that is a deck of SET! cards.
=end
def makeDeck(shadeArray,numberArray,shapeArray,colorArray)
	deck = Array.new(81)
	count =0			
		for j in 0..2
			for k in 0..2
				for l in 0..2
					for m in 0..2
						currentCard = Card.new
						currentCard.setShape(shapeArray[j])
						currentCard.setNumber(numberArray[k])
						currentCard.setShade(shadeArray[l])
						currentCard.setColor(colorArray[m])
						deck[count] = currentCard
						count = count+1									
					end
				end
			end
		end
	
	return deck
end

testDeck= Array.new
testDeck = makeDeck(shadeArray,numberArray,shapeArray,colorArray)	

puts testDeck.size
#puts testDeck[1].getColor
#Test loop to test the deck
i=0
while i< testDeck.size
	puts "card #{i+1}"
	puts testDeck[i].display
	i=i+1
end

