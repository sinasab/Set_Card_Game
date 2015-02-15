require_relative './player'
require_relative './card'
require_relative './deck'
require_relative './checkSet'
require_relative './findSet'
require_relative './printCards'

###  Method Defintions #######

=begin
	This method prints the title.  The ASCII art is from a website.
	http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something
	Dr. Shareef approved the use of this.
=end
def printWelcome 
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

#This method simply prints the rules for the game of SET!
def printRules
	puts "*This is the game of SET! Twelve cards are layed out on the table, 
usually in three rows with four columns.When a player determines a set he 
or she says, \"Set\" then gathers up the three cards. The object, then, is to get 
more sets than your opponents.\n\n"

	puts "*A set is made up of three cards in which all the symbols, number, colors 
and shading are either all different or all the same.\n\n"

	puts "*When a player finds a set, he must immediately pick the cards up.If it is a 
set, they player gets a bus. If it turns out not to be a set, the player loses one point.
The dealer then replaces the three cards.\n\n"
end

#This functions asks user for number of players in game and returns an array of players.
def getPlayers 
	puts "How many people are playing? Please enter an integer greater than 0! \n"

	playerNum = gets.chomp.to_i
	while playerNum <= 0
		puts "Please enter a valid number of players!"
		playerNum = gets.chomp.to_i
	end
	players = Array.new
	for i in 0..playerNum-1
		player = Player.new
		puts "Please enter your name Player #{i+1}: "
		player.name = gets.chomp
		players[i] = player	
	end

	return players
end

#function displays the players current scores
def playerScores( playerList)
	for i in 0..playerList.size-1
		puts "#{playerList[i].name}'s current score is:#{playerList[i].score}"
	end
end

=begin
	@param:
		playerList- An array containing the players
	This method is used for finding the winner of the game.
=end
def findWinner(playerList)
	for i in 0..playerList.size-1
		winner =playerList[0]
		if(playerList[i].score > winner.score)
			winner = playerList[i]
		end
	end

	puts "*****The winner is #{winner.name} with #{winner.score} points!!*****"
end
=begin
	@params:
		playerList:Array of players in the game
	@
This method allows user to pick a set find a hint or quit.
	
=end
def pickSet (playerList, tableCards,cardDeck)
	#set to one as default for single player.

	puts "Enter S to pick a Set, H for a hint, or Q for to quit the game: "
	input= gets.chomp.downcase

	case input
		#case for picking a set.
	when "s"	
		playerIndex =0
		loop do
			puts " Enter your player number: "
			playerIndex = gets.to_i
			playerIndex -=1
			break if((playerIndex < playerList.length))
		end

 		card1, card2, card3 = 0,0,0
		loop do
			puts "#{playerList[playerIndex].name},enter the card numbers(0-#{tableCards.length-1}) that you think are a set. One per Line: "
			card1 =gets.to_i
			card2 =gets.to_i
			card3 =gets.to_i
			break if ((card1 != card2) and (card1 != card3) and (card2 != card3) and (card1 <= tableCards.size) and (card2 <= tableCards.size) and (card3 <= tableCards.size) )
		end	

		isSet = checkSet(tableCards,(card1),(card2),(card3))

		if(isSet) then
			tableCards[card1]=cardDeck.dealCard!
			tableCards[card2]=cardDeck.dealCard!
			tableCards[card3]=cardDeck.dealCard!
			playerList[playerIndex].scorePoint
			system ("clear")
			puts "Nice Job! You found a SET!"
			printCards(tableCards)
			playerScores(playerList)
		else
			playerList[playerIndex].losePoint
			system ("clear")
			puts "That is not a SET! You lose a point!"
			printCards(tableCards)
			playerScores(playerList)
		end
	when "h" #case for displaying a hint
		puts "There is a set made up of the following cards: #{findSets(tableCards)[0]}\n\n"	
	when "q" #case to quit the game
		puts "Thanks for Playing! Goodbye!"
		findWinner(playerList)
		exit
	else #default case
		puts "Invalid Input! Enter S to pick a Set, H for a hint, or Q for to quit the game: "
		input = gets.chomp.downcase
	end
end


#######################################

################# MAIN ######################

printWelcome
printRules
playerList = Array.new(getPlayers)

cardDeck = Deck.new
cardDeck.makeDeck
cardDeck.shuffleDeck!
cardDeck.shuffleDeck!
cardDeck.shuffleDeck!
printCards(tableCards = cardDeck.dealCards)
while (cardDeck.deckSize > 0)
	pickSet(playerList,tableCards,cardDeck)
end
