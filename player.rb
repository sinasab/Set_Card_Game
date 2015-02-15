#Player Class
=begin
Class for Player.  Each player has the following.
name
score
pType - human/computer if we add this functionality.
bestScore - highest score during current session.
bestTime - fastest time if we add this.
=end
class Player

	def initialize()
		#Constructor
		@name = nil
		@score = 0
		@pType = nil
		@bestScore = 0
		@bestTime = 0
	end
	
	#Displays player info as
	#name
	#score bestScore
	#
	def display()
		puts "Player: #{@name}"
		puts "Type: #{@pType}"
		print "Current score: #{@score}" 
		print "Best score: #{@bestScore}\n"
	end

	attr_accessor :name
	attr_accessor :score
	attr_accessor :pType

	# increments score by 1 and updates @bestScore if necessary
	def scorePoint
		@score += 1
		if (@score >= @bestScore)
			@bestScore = @score
		end
	end

	#Used if we would like to penalize player for a wrong set
	def losePoint
		@score =@score-1
	end

	#potentially add methods to keep track of user's time down here
end

