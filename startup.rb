require_relative './checkSet'
require_relative './deck'
require_relative './player'


puts "\nLet's Play Set!\n\n"
puts "How many people are playing? Please enter an integer greater than 0! \n"

playerNum = gets.chomp.to_i
while playerNum <= 0
	puts "Please enter a valid number of players!"
	playerNum = gets.chomp.to_i
end

player1 = Player.new

puts "\nWhat's your name, player 1? \n"

player1.name = gets.chomp

puts "\nGreat! Set will deal you 12 cards, if you find a set, type in your player number and hit enter, then type in the first card in the set and hit enter, and repeat for the other 2 cards in the set. If the cards you identify make a set, they will be removed and replaced, and you will gain a point! Keep going until you run out of cards in the deck! Ready to play? [Y/N]"

playCheck = gets.chomp.downcase

while playCheck != 'y'
	puts "Enter [Y] when you're ready!"
	playCheck = gets.chomp.downcase
end

makeDeck

dealCards
