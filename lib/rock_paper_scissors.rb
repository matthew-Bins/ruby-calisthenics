class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
		raise NoSuchStrategyError.new('Strategy must be one of R,P,S') unless  player1[1] =~ /^[RPS]$/

		raise NoSuchStrategyError.new('Strategy must be one of R,P,S') unless  player2[1] =~ /^[RPS]$/

	if player1[1] == "R"
		if player2[1] == "R"
			return player1
		elsif player2[1] == "P"
			return player2
		elsif player2[1] == "S"
			return player1
		end
	elsif player1[1] == "P"
		if player2[1] == "R"
			return player1
		elsif player2[1] == "P"
			return player1
		elsif player2[1] == "S"
			return player2
		end
	elsif player1[1] == "S"
		if player2[1] == "R"
			return player2
		elsif player2[1] == "P"
			return player1
		elsif player2[1] == "S"
			return player1
		end
	end

  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
	if tournament[0][0].instance_of? Array
		winner tournament_winner(tournament[0]), tournament_winner(tournament[1])
	else
		winner tournament[0], tournament[1]
	end
  end

end
