class Game
	attr_accessor :board, :player_marker, :cpu_marker
	def initialize
		@board = " 
		  1|2|3
		  -----
		  4|5|6
		  -----
		  7|8|9  "
		@cpu_win = false
		@player_win = false
		@game_over = false
		@locations = ["","","","","","","","",""]
	end

	def locations
		@locations
	end

	def place_marker(num,marker)
		@board = @board.sub(num.to_s,marker)
		puts @board
	end

	def cpu_counter
		
	end

	def cpu_win
		if [@locations[0],@locations[1],@locations[2]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[3],@locations[4],@locations[5]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[6],@locations[7],@locations[8]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[0],@locations[4],@locations[8]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[2],@locations[4],@locations[6]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[0],@locations[3],@locations[6]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[0],@locations[3],@locations[6]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[1],@locations[4],@locations[7]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		elsif [@locations[2],@locations[5],@locations[8]] == [self.cpu_marker,self.cpu_marker,self.cpu_marker]
			@cpu_win = true
		end	
	end

	def player_win
		if [@locations[0],@locations[1],@locations[2]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[3],@locations[4],@locations[5]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[6],@locations[7],@locations[8]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[0],@locations[4],@locations[8]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[2],@locations[4],@locations[6]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[0],@locations[3],@locations[6]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[0],@locations[3],@locations[6]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[1],@locations[4],@locations[7]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		elsif [@locations[2],@locations[5],@locations[8]] == [self.player_marker,self.player_marker,self.player_marker]
			@player_win = true
		end	
		@player_win
	end

	def game_over
		if @player_win
			@game_over = true
		elsif @cpu_win
			@game_over = true
		elsif !@locations.include?("")
			@game_over = true
		end
		@game_over
	end

end

g = Game.new
puts "Instructions: Are you ready to play Tic Tac Toe? 
First please pick to play as either X or O. When it's your turn,
please select the square you would like to place your marker in by typing
in the corresponding number when prompted."
puts g.board
puts "Would you like to play as X's or O's?(X/O)."
g.player_marker = gets.upcase.chomp
while g.player_marker != "X" && g.player_marker != "O"
	puts "Would you like to play as X's or O's?(X/O)"
	g.player_marker = gets.upcase.chomp
end
g.player_marker == "X" ? g.cpu_marker = "O" : g.cpu_marker = "X"
puts g.player_marker
puts g.cpu_marker
3.times do
puts "What square do you want to put your marker in?"
a = gets.chomp
g.locations[a.to_i - 1] = g.player_marker
g.place_marker(a,g.player_marker)
end
puts g.player_win
puts g.locations
puts g.game_over
