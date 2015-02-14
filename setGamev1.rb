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
		players[0] = player	
	end

	return players
end
=begin
	@param:
		playerList- An array containing the players
		tableCards - An array of cards that are dealt

	
=end
def pickSet (playerList, tableCards)
	puts " Enter your player number to call set: "
	playerIndex = gets.chomp.to_i +1

	puts "Enter the card numbers that you think are a set with a space in between ( # # #): "
	choice = gets.split(' ')
	isSet = checkSet(tableCards,choice[0].to_i,choice[1].to_i,choice[2].to_i)

	if(isSet) then
		tableCards[choice[0].to_i]=testDeck.dealCard!
		tableCards[choice[1].to_i]=testDeck.dealCard!
		tableCards[choice[2].to_i]=testDeck.dealCard!
		printCards(tableCards)
		playerList[playerIndex].scorePoint
		puts "#{playerList[playerIndex].score}"
	else
		printCards(tableCards)
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
pickSet(playerList,tableCards)
