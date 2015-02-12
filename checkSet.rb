require_relative './card'


def checkSetColor(cardDeck, x, y, z)
	colorCheck = 0;
	
	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp


	# puts "#{x} #{y} #{z}"

	if (cardDeck[x.to_i].color == cardDeck[y.to_i].color and cardDeck[z.to_i].color == cardDeck[y.to_i].color) or ((cardDeck[x.to_i].color != cardDeck[y.to_i].color) and (cardDeck[x.to_i].color != cardDeck[z.to_i].color) and (cardDeck[y.to_i].color != cardDeck[z.to_i].color))
		colorCheck = 1  #will eventually be replaced by 1
		#puts "#{colorCheck}"
	
	end

	return colorCheck

end

def checkSetShape(cardDeck, x, y, z)
	
	shapeCheck = 0;

	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp



	# puts "#{x} #{y} #{z}"

	# puts "#{cardDeck[x.to_i].shape} #{cardDeck[y.to_i].shape} #{cardDeck[z.to_i].shape}"


	if (cardDeck[x.to_i].shape == cardDeck[y.to_i].shape and cardDeck[z.to_i].shape == cardDeck[y.to_i].shape) or ((cardDeck[x.to_i].shape != cardDeck[y.to_i].shape) and (cardDeck[x.to_i].shape != cardDeck[z.to_i].shape) and (cardDeck[y.to_i].shape != cardDeck[z.to_i].shape))
		shapeCheck = 1  #will be replaced by 1 
		#puts "#{shapeCheck}"
	end
	return shapeCheck

end

def checkSetNumber(cardDeck, x, y, z)
	
	numberCheck = 0;
	
	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp

	# puts "#{x} #{y} #{z}"

	# puts "#{cardDeck[x.to_i].number} #{cardDeck[y.to_i].number} #{cardDeck[z.to_i].number}"

	if (cardDeck[x.to_i].number == cardDeck[y.to_i].number and cardDeck[z.to_i].number == cardDeck[y.to_i].number) or ((cardDeck[x.to_i].number != cardDeck[y.to_i].number) and (cardDeck[x.to_i].number != cardDeck[z.to_i].number) and (cardDeck[y.to_i].number != cardDeck[z.to_i].number))
		numberCheck = 1  #will eventually be replaced with 1	
		#puts "#{numberCheck}" 
	
	end
	return numberCheck
end

def checkSetShade(cardDeck, x, y, z)
	
	shadeCheck = 0;
	
	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp

	# puts "#{x} #{y} #{z}"

	# puts "#{cardDeck[x.to_i].shade} #{cardDeck[y.to_i].shade} #{cardDeck[z.to_i].shade}"

	if (cardDeck[x.to_i].shade == cardDeck[y.to_i].shade and cardDeck[z.to_i].shade == cardDeck[y.to_i].shade) or ((cardDeck[x.to_i].shade != cardDeck[y.to_i].shade) and (cardDeck[x.to_i].shade != cardDeck[z.to_i].shade) and (cardDeck[y.to_i].shade != cardDeck[z.to_i].shade))
		shadeCheck = 1 #this will eventually be replaced with 1
		#puts "#{shadeCheck}"
	end
	return shadeCheck
end

=begin
param cardDeck:
		set of cards in an array that will hold individual cards
param: card1, card2, card3
		three cards to be checked 
return: true for set, false for no set

This method calls the methods that check each component of the individual cards. If all 4 aspects fit the requirements for a set, then there is a set	

=end

def checkSet(cardDeck, card1, card2, card3)

	sumCheck = 0
	sumCheck = checkSetShade(cardDeck, card1, card2, card3) + checkSetNumber(cardDeck, card1, card2, card3) + checkSetColor(cardDeck, card1, card2, card3) + checkSetShape(cardDeck, card1, card2, card3)

	return sumCheck==4

end