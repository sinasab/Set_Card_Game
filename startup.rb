require_relative './checkSet'
require_relative './deck'
require_relative './player'

def takeATurn(playerNum, tableDeck, card1, card2, card3, playerArray)

	puts "Enter your player number when you've found a set!"
	playerNum = gets.chomp.to_i
	while playerNum > playerArray.length
		puts "Enter a valid player number!"
		playerNum = gets.chomp.to_i
		puts ""
	end

	puts "Now enter the cards one at a time!"
	card1 = gets.chomp.to_i
	while card1 > tableDeck.length
		puts "Enter a valid card number!"
		card1 = gets.chomp.to_i
		puts ""
	end

	card2 = gets.chomp.to_i
	while card2 > tableDeck.length || card2 == card1
		puts "Enter a valid card number!"
		card2 = gets.chomp.to_i
		puts ""
	end

	card3 = gets.chomp.to_i
	while card3 > tableDeck.length || card3 == card2 || card3 == card1
		puts "Enter a valid card number!"
		card3 = gets.chomp.to_i
		puts ""
	end
end


puts "\nLet's Play Set!\n\n"
puts "How many people are playing? Please enter an integer greater than 0! \n"

playerNum = gets.chomp.to_i
while playerNum <= 0
	puts "Please enter a valid number of players!"
	playerNum = gets.chomp.to_i
end

playerArray = Array.new(playerNum){Player.new}

i=1
k=0
while i < (playerNum+1)	
	puts "\nWhat's your name, player #{i}? \n"
	playerArray[k].name = gets.chomp
	playerArray[k].pType = 'human'
	k=k+1
	i=i+1
end

puts "\nGreat! Set will deal you 12 cards, if you find a set, type in your player number and hit enter, then type in the first card in the set and hit enter, and repeat for the other 2 cards in the set. If the cards you identify make a set, they will be removed and replaced, and you will gain a point! Keep going until you run out of cards in the deck! Ready to play? [Y/N]"

playCheck = gets.chomp.downcase

while playCheck != 'y'
	puts "Enter [Y] when you're ready!"
	playCheck = gets.chomp.downcase
end

#Create a new deck and shuffle it
deck = Deck.new
deck.makeDeck
deck.shuffleDeck!

#Create the deck of table cards
tableDeck = Array.new

tableDeck = deck.dealCards
card1 = 0
card2 = 0
card3 = 0


#Unsure about this loop condition
while findSet(tableDeck) == true
	tableDeck = deck.dealCards
	takeATurn(playerNum, tableDeck, card1, card2, card3, playerArray)
	check = checkSet(tableDeck, card1, card2, card3)

	while check == false
		puts "Woops, thats not a set, try again!"
		takeATurn(playerNum, tableDeck, card1, card2, card3, playerArray)
	end

	#Remove three cards and deal three new to tableDeck
	if check == true
		puts "Congrats! Ready for the next round? [Y/N]"
		playerArray[playerNum-1].scorePoint
		tableDeck[card1-1]=deck.dealCard!
		tableDeck[card2-1]=deck.dealCard!
		tableDeck[card3-1]=deck.dealCard!
	end

	playCheck = gets.chomp.downcase

	while playCheck != 'y'
		puts "\n Enter [Y] when you're ready!"
		playCheck = gets.chomp.downcase
	end
end