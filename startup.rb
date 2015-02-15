require_relative './checkSet'
require_relative './deck'
require_relative './player'
=begin
	@param:
		tableDeck: The current cards that are on the table
		playerArray: The current players that are playing the game.
	function that allows player to enter their proposed set. Checks player's input to ensure it is valid and then checks to see if the selected cards make a set. Takes action accordingly.
=end
def takeATurn(tableDeck, playerArray,deck)
	puts "Enter your player number:"
	playerNum = gets.chomp.to_i
	playerNum=playerNum-1
	while playerNum >= playerArray.length || playerNum <0 
		puts "Enter a valid player number!"
		playerNum = gets.chomp.to_i
		playerNum=playerNum-1
	end
	#get valid input
	tableRange=0...tableDeck.size
	puts "Ok #{playerArray[playerNum].name}, now enter the cards. One card per line!"
	card1 = (gets.chomp.to_i - 1)
	while !(tableRange===card1)
		puts "Enter a valid card number!"
		card1 = (gets.chomp.to_i - 1)
		puts ""
	end
	card2 = (gets.chomp.to_i - 1)
	while !(tableRange===card2) || (card2 == card1)
		puts "Enter a valid card number!"
		card2 = (gets.chomp.to_i - 1)
		puts ""
	end
	card3 = (gets.chomp.to_i - 1)
	while !(tableRange===card3) || (card3 == card2) || (card3 == card1)
		puts "Enter a valid card number!"
		card3 = (gets.chomp.to_i - 1)
		puts ""
	end
	if !checkSet(tableDeck, card1, card2, card3)
		#if the card is not a set, take appropriate action
		system "clear"
		puts "\n\n"
		puts "That actually wasn't a set! #{playerArray[playerNum].name} loses one point!"
		playerArray[playerNum].losePoint
		playerNum=-1
		#playerNum is used as a flag. It is set as -1 if the entered cards do not make a set, or kept the same if the cards do make a set. Then, playerNum is returned.
	else
		#update the table if the cards entered make a set
		c1=tableDeck[card1]
		c2=tableDeck[card2]
		c3=tableDeck[card3]
		tableDeck.delete(c1)
		tableDeck.delete(c2)
		tableDeck.delete(c3)
		updateTable(tableDeck, deck)
	end
	return playerNum
end
=begin
	Updates the table cards if cards delt after a set result
	in no set being available. They are replaced.
=end
def updateTable(tableCards, deck)
	while deck.deckSize!=0 && (tableCards.size<12 || findSets(tableCards).size==0)
		tableCards.push(deck.dealCard!)
		tableCards.push(deck.dealCard!)
		tableCards.push(deck.dealCard!)
	end
end

=begin
	This method prints the title.  The ASCII art is from a website.
	http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something
	Dr. Shareef approved the use of this.
=end
def printWelcome 
	system "clear"
	puts '
 __          ________ _      _____ ____  __  __ ______ 
 \ \        / |  ____| |    / ____/ __ \|  \/  |  ____|
  \ \  /\  / /| |__  | |   | |   | |  | | \  / | |__   
   \ \/  \/ / |  __| | |   | |   | |  | | |\/| |  __|  
    \  /\  /  | |____| |___| |___| |__| | |  | | |____ 
     \/  \/   |______|______\_____\____/|_|  |_|______|
              |__   __|                                
                 | | ___                               
                 | |/ _ \                              
                 | | (_) |                             
                 |_|\___/_ ______ _______ _            
                    / ____|  ____|__   __| |           
                   | (___ | |__     | |  | |           
                    \___ \|  __|    | |  | |           
                    ____) | |____   | |  |_|           
                   |_____/|______|  |_|  (_)           
                                                   '
end

=begin	
@param: playerArray: Array of current players

	This method displays the players current scores.
=end
def printScore(playerArray)
	puts "Scoreboard: "
	for i in 0...playerArray.size
	puts "#{i+1}. #{playerArray[i].name}, score: #{playerArray[i].score}"
	end
end

=begin	
@param: playerArray: Array of current players

This method finds the player with the highest score total and 
displays the name as the winner of the game
=end
def findWinner(playerArray)
	highest = playerArray[0]
	winners = Array.new {Player.new}
	for i in 0..playerArray.size-1
		if(playerArray[i].score > highest.score)
			highest= playerArray[i]
		elsif (playerArray[i].score == highest.score)
			winners.push(highest)
			winners.push(playerArray[i])
		end
	end
	contender = winners.pop
	if ((highest.score > contender.score) || playerArray.size ==1)
		puts "*****The winner is #{highest.name} with #{highest.score} points!!*****"
	else
		puts "*****There is a tie!*****"
	end
end

=begin
	@param: deck - card deck for the game.
			tableCards - current cards visible to players
			playerArray - list of players

	This method is the central function for control of the game.
	It allows players to call for a set, enter the cards, ask for a hint,
	or quit the game.	
=end
def keyPart(deck,tableCards,playerArray)
	while deck.deckSize>0 && deck.deckSize<81 && findSets(tableCards).size !=0
		printCards(tableCards)
		printScore(playerArray)
		puts "Enter S to enter a set, H for a hint, or Q to quit!\n"
		input=gets.chomp.downcase
		while(!["s","h","q"].include? input)
			puts "Enter a valid input!"
			input = gets.chomp.downcase
		end
		#case where player wants to enter a possible set.
		if input=="s"
			playerNum=takeATurn(tableCards, playerArray,deck)
			if playerNum >=0
				playerArray[playerNum].scorePoint
				system "clear"
				puts "\n\n"
				puts "Nice job! That makes a set!"
				puts "#{playerArray[playerNum].name} has scored a point!\n\n"
				keyPart(deck,tableCards,playerArray)
			else
				keyPart(deck,tableCards,playerArray)
			end
		#case when player asks for a hint.
		elsif input=="h"

			a,b = findSets(tableCards)[0]
			puts "There is a set made up of the following cards: #{a},#{b},?\n\n"
			system "clear"
			puts "\n\n"
			puts "There is a set made up of the following cards: #{a},#{b},?\n\n"
		# case for quitting th game, outputs scores and winner
		elsif input=="q"
			printScore(playerArray)
			findWinner(playerArray)		
			puts "Thanks for playing. Goodbye!"
			exit
		end
	end
	puts "The deck ran out of cards, or there are no more sets! Thanks for Playing!"
	printScore(playerArray)
	findWinner(playerArray)
	exit
end

#########################   MAIN      ###########################
printWelcome
puts "How many people are playing? Please enter an integer greater than 0! \n"

playerNum = gets.chomp.to_i
while playerNum <= 0
	puts "Please enter a valid number of players!"
	playerNum = gets.chomp.to_i
end

#create list of players
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

#Rules of the game
puts "\nGreat! Set will deal you 12 cards, if a player finds a set, they should type 
an \"S\" and press enter, and then enter their player number and press enter. Then type 
in the first card in the set and hit enter, and repeat for the other 2 cards in the set. 
If the cards you identify make a set, they will be removed and replaced, and you will gain
a point! Keep going until you run out of cards in the deck! 
Ready to play? [Y/N]"

playCheck = gets.chomp.downcase

#Simple check to see if player is ready to continue
while playCheck != 'y'
	puts "Enter [Y] when you're ready!"
	playCheck = gets.chomp.downcase
end
system "clear"

#Create a new deck and shuffle it
deck = Deck.new
deck.makeDeck
deck.shuffleDeck!
tableCards = deck.dealCards


puts "\n\n"
keyPart(deck,tableCards,playerArray)

#then the deck is empty, display results and winner
if(deck.deckSize == 0)
	printScore(playerArray)
	findWinner(playerArray)
end
