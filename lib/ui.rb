class UI

  def ask_to_start
    puts "Would you like to play a game of TicTacToe? type y for yes and n for no"
    gets.chomp
  end

  def abort_message
    abort("Till next time!")
  end

  def which_order
    puts "Great! let's get started."
    puts "Would you like to play first or second? type f for first and s for second."
    gets.chomp
  end

  def print_board(board)
    row_1 = "#{board[0]} | #{board[1]} | #{board[2]} "
    row_2 = "#{board[3]} | #{board[4]} | #{board[5]} "
    row_3 = "#{board[6]} | #{board[7]} | #{board[8]} "
    line = '---------'
    space = ''
      puts space
      puts row_1
      puts line
      puts row_2
      puts line
      puts row_3
      puts space
  end

  def make_move
    puts "Make a move by choosing an available number 1-9"
  end

  def error
    puts "bzzzzt error! ERROR"
  end

  def which_opponent
    puts "what kind of opponent will you have?"
    puts "type h for human"
    puts "type j if you want to play agianst my ai"
    puts "type m if you want to play against minimax"
    gets.chomp
  end

  def invalid_move
    puts "please choose a valid move"
  end

  def game_over(outcome)
    if outcome == [1,2]
      puts "Congratulations you've won!!!"
      abort_message
    elsif outcome == [2,1]
      puts "The computer has won..."
      abort_message
    elsif outcome == "tie"
      puts "The game is a tie..."
      abort_message
    end
  end
end
