class OutcomesController < ApplicationController
	def play_rock
		@player_move = "Rock"
		@computer_move = rand(1..3)
		if @computer_move == 1
			@computer_move = "Rock"
		elsif @computer_move == 2
			@computer_move = "Paper"
		else
			@computer_move = "Scissors"
		end
		if @computer_move == "Rock" 
			@outcome = "You tied!"
		elsif @computer_move == "Scissors"
			@outcome = "You won!"
		else
			@outcome = "You lost!"
		end
		
		if @outcome == "You won!"
			@bttn = "label label-success"
		elsif @outcome == "You lost!"
			@bttn = "label label-danger"
		elsif @outcome == "You tied!"
			@bttn = "label label-warning"
		end
				
		render("play_rock.html.erb")
	end

	def play_paper
		@player_move = "Paper"
		@computer_move = rand(1..3)
		if @computer_move == 1
			@computer_move = "Rock"
		elsif @computer_move == 2
			@computer_move = "Paper"
		else
			@computer_move = "Scissors"
		end
		if @computer_move == "Paper" 
			@outcome = "You tied!"
		elsif @computer_move == "Rock"
			@outcome = "You won!"
		else
			@outcome = "You lost!"
		end
		
		if @outcome == "You won!"
			@bttn = "label label-success"
		elsif @outcome == "You lost!"
			@bttn = "label label-danger"
		elsif @outcome == "You tied!"
			@bttn = "label label-warning"
		end

		render("play_paper.html.erb")
	end

	def play_scissors
		@player_move = "Scissors"
		@computer_move = rand(1..3)
		if @computer_move == 1
			@computer_move = "Rock"
		elsif @computer_move == 2
			@computer_move = "Paper"
		else
			@computer_move = "Scissors"
		end
		if @computer_move == "Scissors" 
			@outcome = "You tied!"
		elsif @computer_move == "Paper"
			@outcome = "You won!"
		else
			@outcome = "You lost!"
		end
		
		if @outcome == "You won!"
			@bttn = "label label-success"
		elsif @outcome == "You lost!"
			@bttn = "label label-danger"
		elsif @outcome == "You tied!"
			@bttn = "label label-warning"
		end

		render("play_scissors.html.erb")
	end

end


