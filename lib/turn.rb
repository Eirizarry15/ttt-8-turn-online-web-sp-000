def turn(board=[" "," "," "," "," "," "," "," "," "])
  puts "Please enter 1-9:"
  index = gets.strip
  newNum = input_to_index(index)
  
  if valid_move?(board, newNum)
    move(board,newNum)
    display_board(board)
  else
    puts 'Please try again'
    
    turn(board)
  end

end


def move(board, index, char='X')
  board[index]="#{char}"
end

def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end


def valid_move?(board, index)
  
  if !position_taken?(board,index) && between?(index)
    
    true
  else
    false
  end
end


def position_taken?(board, index)
  
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    
    return true
  end

end


def between?(index)
  if index >= 0 && index < 9
    return true
  end
end


def input_to_index(num)
  indexinteger = num.to_i - 1
  puts "this is what i am returning #{indexinteger}"
  return indexinteger
end