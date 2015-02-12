def checkSetColor(cardDeck, x, y, z)
	colorCheck = 0;
	
	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp



	# puts "#{x} #{y} #{z}"

	if (cardDeck[x.to_i].getColor == cardDeck[y.to_i].getColor and cardDeck[z.to_i].getColor == cardDeck[y.to_i].getColor) or ((cardDeck[x.to_i].getColor != cardDeck[y.to_i].getColor) and (cardDeck[x.to_i].getColor != cardDeck[z.to_i].getColor) and (cardDeck[y.to_i].getColor != cardDeck[z.to_i].getColor))
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

	# puts "#{cardDeck[x.to_i].getShape} #{cardDeck[y.to_i].getShape} #{cardDeck[z.to_i].getShape}"


	if (cardDeck[x.to_i].getShape == cardDeck[y.to_i].getShape and cardDeck[z.to_i].getShape == cardDeck[y.to_i].getShape) or ((cardDeck[x.to_i].getShape != cardDeck[y.to_i].getShape) and (cardDeck[x.to_i].getShape != cardDeck[z.to_i].getShape) and (cardDeck[y.to_i].getShape != cardDeck[z.to_i].getShape))
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

	# puts "#{cardDeck[x.to_i].getNumber} #{cardDeck[y.to_i].getNumber} #{cardDeck[z.to_i].getNumber}"

	if (cardDeck[x.to_i].getNumber == cardDeck[y.to_i].getNumber and cardDeck[z.to_i].getNumber == cardDeck[y.to_i].getNumber) or ((cardDeck[x.to_i].getNumber != cardDeck[y.to_i].getNumber) and (cardDeck[x.to_i].getNumber != cardDeck[z.to_i].getNumber) and (cardDeck[y.to_i].getNumber != cardDeck[z.to_i].getNumber))
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

	# puts "#{cardDeck[x.to_i].getShade} #{cardDeck[y.to_i].getShade} #{cardDeck[z.to_i].getShade}"

	if (cardDeck[x.to_i].getShade == cardDeck[y.to_i].getShade and cardDeck[z.to_i].getShade == cardDeck[y.to_i].getShade) or ((cardDeck[x.to_i].getShade != cardDeck[y.to_i].getShade) and (cardDeck[x.to_i].getShade != cardDeck[z.to_i].getShade) and (cardDeck[y.to_i].getShade != cardDeck[z.to_i].getShade))
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

	isSet = false
	sumCheck = 0
	sumCheck = checkSetShade(cardDeck, card1, card2, card3) + checkSetNumber(cardDeck, card1, card2, card3) + checkSetColor(cardDeck, card1, card2, card3) + checkSetShape(cardDeck, card1, card2, card3)

	if sumCheck == 4
		isSet = true
	end

	return isSet

	end