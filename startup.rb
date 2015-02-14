require_relative './checkSet'
require_relative './deck'
require_relative './player'
=begin
	@param:
		tableDeck: The current cards that are on the table
		playerArray: The current players that are playing the game.


	
=end
def takeATurn(tableDeck, playerArray)

	puts "Enter your player number:"

	playerNum = gets.chomp.to_i
	playerNum=playerNum-1
	while playerNum > playerArray.length-1
		puts "Enter a valid player number!"
		playerNum = gets.chomp.to_i
		playerNum=playerNum-1
	end

	puts "Ok #{playerArray[playerNum].name}, now enter the cards. One card per line!"
	card1 = gets.chomp.to_i
	while card1 > tableDeck.length || card1<0
		puts "Enter a valid card number!"
		card1 = gets.chomp.to_i
		puts ""
	end

	card2 = gets.chomp.to_i
	while card2 > tableDeck.length || card2 == card1 || card2<0
		puts "Enter a valid card number!"
		card2 = gets.chomp.to_i
		puts ""
	end

	card3 = gets.chomp.to_i
	while card3 > tableDeck.length || card3 == card2 || card3 == card1 ||card3<0
		puts "Enter a valid card number!"
		card3 = gets.chomp.to_i
		puts ""
	end
	if !checkSet(tableDeck, card1, card2, card3)
		playerNum=-1
	end
	return playerNum
end

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

#########################   MAIN      ###########################
printWelcome
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

puts "\nGreat! Set will deal you 12 cards, if you find a set, type in your player number and hit enter. 
Then type in the first card in the set and hit enter, and repeat for the other 2 cards in the set. 
If the cards you identify make a set, they will be removed and replaced, and you will gain a point! Keep 
going until you run out of cards in the deck! 
Ready to play? [Y/N]"

playCheck = gets.chomp.downcase

while playCheck != 'y'
	puts "Enter [Y] when you're ready!"
	playCheck = gets.chomp.downcase
end

#Create a new deck and shuffle it
deck = Deck.new
deck.makeDeck
deck.shuffleDeck!
tableCards = deck.dealCards
printCards(tableCards)
card1 = 0
card2 = 0
card3 = 0

while deck.deckSize>0 && deck.deckSize<81
	puts "Current players are: "
	for i in 0...playerArray.size
		puts "#{i+1}. #{playerArray[i].name}, score: #{playerArray[i].score}"
	end
	puts "Enter S to enter a set, H for a hint, or Q to quit!\n"
	input=gets.chomp.downcase
	while(!["s","h","q"].include? input)
		"Enter a valid input!"
	end
	if input=="s"
		playerNum=takeATurn(tableCards, playerArray)
		if playerNum >=0
			playerArray[playerNum].scorePoint
			puts "#{playerArray[playerNum].name} has scored a point!\n\n"
		else
			puts "Those cards actually don't make a set.\n\n"
		end
	elsif input=="h"
		puts "There is a set made up of the following cards: #{findSets(tableCards)[0]}\n\n"
	elsif input=="q"
		deck.makeDeck
		puts "Thanks for playing. Goodbye!"
	end
end

