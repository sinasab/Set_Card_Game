=begin

param: cardDeck
	takes a newly created deck of cards to use to check for a set

This method takes in user input to check if the 3 selected cards make up a set

=end

def checkSet(cardDeck)
	colorCheck = "";
	shadeCheck = "";
	numberCheck = "";
	shapeCheck = "";

	puts "Enter first card number: "
	x = gets.chomp
	
	puts "Enter second card number: "
	y = gets.chomp
	
	puts = "Enter third card number: "
	z = gets.chomp



	puts "#{x} #{y} #{z}"

	if (cardDeck[x.to_i].getColor == cardDeck[y.to_i].getColor and cardDeck[z.to_i].getColor == cardDeck[y.to_i].getColor) or ((cardDeck[x.to_i].getColor != cardDeck[y.to_i].getColor) and (cardDeck[x.to_i].getColor != cardDeck[z.to_i].getColor) and (cardDeck[y.to_i].getColor != cardDeck[z.to_i].getColor))
		colorCheck = "true"
		puts "#{colorCheck}"
	else
		puts "false"
	end

	if (cardDeck[x.to_i].getShape == cardDeck[y.to_i].getShape and cardDeck[z.to_i].getShape == cardDeck[y.to_i].getShape) or ((cardDeck[x.to_i].getShape != cardDeck[y.to_i].getShape) and (cardDeck[x.to_i].getShape != cardDeck[z.to_i].getShape) and (cardDeck[y.to_i].getShape != cardDeck[z.to_i].getShape))
		shapeCheck = "true"
		puts "#{shapeCheck}"
	else
		puts "false"
	end

	if (cardDeck[x.to_i].getNumber == cardDeck[y.to_i].getNumber and cardDeck[z.to_i].getNumber == cardDeck[y.to_i].getNumber) or ((cardDeck[x.to_i].getNumber != cardDeck[y.to_i].getNumber) and (cardDeck[x.to_i].getNumber != cardDeck[z.to_i].getNumber) and (cardDeck[y.to_i].getNumber != cardDeck[z.to_i].getNumber))
		numberCheck = "true"
		puts "#{numberCheck}"
	else
		puts "false"
	end
end
