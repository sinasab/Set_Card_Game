def checkSetColor(cardDeck, card1, card2, card3)
	colorCheck = "";
	
	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp



	# puts "#{x} #{y} #{z}"

	if (cardDeck[x.to_i].getColor == cardDeck[y.to_i].getColor and cardDeck[z.to_i].getColor == cardDeck[y.to_i].getColor) or ((cardDeck[x.to_i].getColor != cardDeck[y.to_i].getColor) and (cardDeck[x.to_i].getColor != cardDeck[z.to_i].getColor) and (cardDeck[y.to_i].getColor != cardDeck[z.to_i].getColor))
		colorCheck = "true"   #will eventually be replaced by 1
		puts "#{colorCheck}"
	else
		puts "false"	#will eventually be replaced by zero
	end

end

def checkSetShape(cardDeck, card1, card2, card3)
	
	shapeCheck = "";

	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp



	# puts "#{x} #{y} #{z}"

	# puts "#{cardDeck[x.to_i].getShape} #{cardDeck[y.to_i].getShape} #{cardDeck[z.to_i].getShape}"


	if (cardDeck[x.to_i].getShape == cardDeck[y.to_i].getShape and cardDeck[z.to_i].getShape == cardDeck[y.to_i].getShape) or ((cardDeck[x.to_i].getShape != cardDeck[y.to_i].getShape) and (cardDeck[x.to_i].getShape != cardDeck[z.to_i].getShape) and (cardDeck[y.to_i].getShape != cardDeck[z.to_i].getShape))
		shapeCheck = "true"  #will be replaced by 1 
		puts "#{shapeCheck}"
	else 
		puts "false"  #will be replaced by 0
	end

end

def checkSetNumber(cardDeck, card1, card2, card3)
	
	numberCheck = "";
	
	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp

	# puts "#{x} #{y} #{z}"

	# puts "#{cardDeck[x.to_i].getNumber} #{cardDeck[y.to_i].getNumber} #{cardDeck[z.to_i].getNumber}"

	if (cardDeck[x.to_i].getNumber == cardDeck[y.to_i].getNumber and cardDeck[z.to_i].getNumber == cardDeck[y.to_i].getNumber) or ((cardDeck[x.to_i].getNumber != cardDeck[y.to_i].getNumber) and (cardDeck[x.to_i].getNumber != cardDeck[z.to_i].getNumber) and (cardDeck[y.to_i].getNumber != cardDeck[z.to_i].getNumber))
		numberCheck = "true"  #will eventually be replaced with 1	
		puts "#{numberCheck}" 
	else
		puts "false"   #will eventually be replaced with 0
	end
end

def checkSetShade(cardDeck, card1, card2, card3)
	
	shadeCheck = "";
	
	# puts "Enter first card number: "
	# x = gets.chomp
	
	# puts "Enter second card number: "
	# y = gets.chomp
	
	# puts = "Enter third card number: "
	# z = gets.chomp

	# puts "#{x} #{y} #{z}"

	# puts "#{cardDeck[x.to_i].getShade} #{cardDeck[y.to_i].getShade} #{cardDeck[z.to_i].getShade}"

	if (cardDeck[x.to_i].getShade == cardDeck[y.to_i].getShade and cardDeck[z.to_i].getShade == cardDeck[y.to_i].getShade) or ((cardDeck[x.to_i].getShade != cardDeck[y.to_i].getShade) and (cardDeck[x.to_i].getShade != cardDeck[z.to_i].getShade) and (cardDeck[y.to_i].getShade != cardDeck[z.to_i].getShade))
		shadeCheck = "true" #this will eventually be replaced with 1
		puts "#{shadeCheck}"
	else
		puts "false" #this will eventually be replaced with 0
	end
end
