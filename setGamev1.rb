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
=begin
	@param:
		playerList- An array containing the players
		tableCards - An array of cards that are dealt

	
=end
def pickSet (playerList, tableCards,cardDeck)
	#set to one as default for single player.
	playerIndex =0
	loop do
		puts " Enter your player number to call set: "
		playerIndex = gets.to_i
		playerIndex -=1
		break if(playerIndex <= playerList.length)
	end

 	card1, card2, card3 = 0,0,0
	loop do
		puts "#{playerList[playerIndex].name},enter the card numbers(1-#{tableCards.length}) that you think are a set. One per Line: "
		card1 =gets.to_i
		card2 =gets.to_i
		card3 =gets.to_i
		break if ((card1 != card2) and (card1 != card3) and (card2 != card3) and (card1 <= tableCards.size) and (card2 <= tableCards.size) and (card3 <= tableCards.size) )
	end	
	# minus 1 for each card to adjust for array usage
	isSet = checkSet(tableCards,(card1-1),(card2-1),(card3-1))

	if(isSet) then
		puts "Nice Job! You found a SET!"
		tableCards[card1-1]=cardDeck.dealCard!
		tableCards[card2-1]=cardDeck.dealCard!
		tableCards[card3-1]=cardDeck.dealCard!
		printCards(tableCards)
		playerList[playerIndex].scorePoint
		puts "#{playerList[playerIndex].name} current score is:#{playerList[playerIndex].score}"
	else
		puts "That is not a SET! You lose a point!"
		printCards(tableCards)
		playerList[playerIndex].losePoint
		puts "#{playerList[playerIndex].name} current score is: #{playerList[playerIndex].score}"
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
tableCards = cardDeck.dealCards
while (cardDeck.deckSize > 0)
	pickSet(playerList,tableCards,cardDeck)
end
