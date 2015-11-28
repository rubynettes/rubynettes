# Exercise: Tac Tac Toe


## Motivation

In this exercise, we build a version of the game Tic Tac Toe. The aim is to be able to play Tic Tac Toe in the terminal with 2 players. In the final version, the computer will be able to detect the winner.

## Rules

Tic Tac Toe is played on a board of 3x3 positions. The game starts with an empty board. The 2 players take turns, setting a stone 'X' or 'O' on one of the remaining free positions. If one player gets 3 stones in row, column or diagonal, she wins and the game ends.

If after 9 moves nobody won, the game ends with a tie.

## Structure

To make this exercise a bit easier, we will split it in multiple steps that build upon each other.


## Step 1

Build a class called `Board` that represents the playing area.

Add the following methods to `Board`:

#### Method 1: Board#initialize

Sets up the board - you figure out what you need to do here based on the other methods in this step. :-))

#### Method 2: Board#set_stone_at(position, stone)

Places a stone ('X' or 'O') on the board, at the given position.

- position is a `String` ('1'...'9')
- stone is `String` ('X' or 'O')

#### Method 3: Board#stone_at(position)

Returns the stone at the given position.

- position is a `String` ('1'...'9')
- the returned stone is `String` ('X', 'O' or nil if there is no stone)

#### Method 4: Board#show

Prints the board's stones to the terminal. The output doesn't have to be pretty - the method's purpose is to help you verify that the other two methods work. The output can look like this:

```ruby
{ '1' => nil, '2' => 'O', '3' => 'X', '4' => nil, ... }
```

#### Test it

To verify that your code works, try this:

```ruby
board = Board.new
board.show           # => expect { '1' => nil, '2' => nil, '3' => nil, ... }

board.stone_at('2')  # => expect nil

board.set_stone_at('2', 'O')
board.stone_at('2')  # => expect 'O'

board.set_stone_at('3', 'X')
board.show           # => expect { '1' => nil, '2' => 'O', '3' => 'X', ... }
```


## Step 2

In this step we add a terminal based user interface to our game. We will do this in a bottom up fashion - we implement some lower level methods and then combine them in one high level method which coordinates the lower level methods.

Build a class called `Game` that implements the user interface.

Add the following methods to `Game`:

#### Method 1: Game#initialize

Creates a new `Board` object and assigns it to an `attr_accessor` called `board`.

This allows us to say

```ruby
Game.new.board.show    # => expect { '1' => nil, '2' => nil, '3' => nil, ... }
```


#### Method 2: Game#print_board

Prints a pretty representation of the board to the terminal.

For example:

```ruby
game = Game.new
game.board.set_stone_at('1', 'X')
game.board.set_stone_at('2', 'X')
game.board.set_stone_at('3', 'O')
game.board.set_stone_at('4', 'O')
game.board.set_stone_at('6', 'X')
game.board.set_stone_at('7', 'O')
game.board.set_stone_at('8', 'X')
game.print_board

 X | X | O
---+---+---
 O |   | X
---+---+---
 O | X |
```


#### Method 3: Game#ask_user_for_move

Prompts the user to enter a position, waits for her input and returns the position.

- position is a `String` ('1'...'9')

To test:

```ruby
game = Game.new
game.ask_user_for_move
# Prints: "Your next move, dude?"
# User enters: "3"
# => '3'
```

#### Method 4: Game#next_stone

Returns the next stone to put on the board. Alternates between 'X' and 'O'.

- the returned stone is a `String` ('X', 'O')

For example:

```ruby
game = Game.new
game.next_stone      # => 'X'
game.next_stone      # => 'O'
game.next_stone      # => 'X'
game.next_stone      # => 'O'
...
```


#### Method 5: Game#start

Combines the other methods of `Game` to form a playable game:

  - Asks the user for a position
  - Puts a stone obtained from next_stone on the board, at the position that the user entered.
  - Prints the board
  - Repeats this in an endless loop

#### Test it

At this point, you have a TicTacToe that is playable with two people - play it!

```ruby
Game.new
game.start
# ...crazy game action commences...
```


## Step 3

In this step, we let the computer figure out if the user's move is valid.

Add or change the following methods:


#### Add Method 1: Board#valid_position?(position)

Returns true if the given position is a valid position (('1'...'9'), false otherwise.

- position is a `String` ('1'...'9')
- returns true or false

#### Add Method 2: Board#valid_move?(position)

Returns true if the board has no stone at the given position, false otherwise.

- position is a `String` ('1'...'9')
- returns true or false


#### Extend Method 3: Game#start

Change the method Game#start to check if the move entered by the user is a valid position and a valid move, and if not, tell her and don't set the stone.

#### Test it

Start a game and try invalid positions and moves.

## Step 4

In this step we let the computer detect the winner and end the game.


#### Add Method 1: Board#find_winner

Returns the winner ('X' or 'O') if there is a winner, otherwise false.

- returns 'X', 'O', or false

#### Add Method 2: Board#tie?

Returns true if all positions are occupied by a stone, otherwise false.

- returns true or false

#### Change Method 2: Game#start

Change the method Game#start to check after each move if the board has a winner and if yes, print it and end the game.

After you succeeded, change the method again: If we don't have a winner, check the board if we have a tie and if yes, print it and end the game.


#### Test it

Start a game, play up to a winning position or a tie and expect the game to tell you and end.

For example:

```ruby
Game.new
game.start
# "Your move dude?"
# "1"
# ...and so on...
 X | X | X
---+---+---
 O |   |
---+---+---
 O |   |

# "Player 'X' won the game!!!"
```


## Step 5

This step is just fun, it's not really about learning new techniques. The aim is to add color to the output.


Install the colorize gem by running the following command in your terminal:

```
$ gem install colorize
```

This allows you to print strings in the color of your choice.

For instance, try this in irb:

```ruby
require 'colorize'
puts 'Hello colorful world'.colorize(:color => :green)
puts 'Hello pretty world'.colorize(:color => :light_blue)
```

Or this, with a background color:

```ruby
require 'colorize'
puts 'Hello pretty world'.colorize(:color => :red, :background => :black)
```

Or this:
```ruby
puts String.color_samples
```

#### Extend method Game#print_board

Change the method to print the stones 'X' and 'O' in different colors. Use a black background for the whole board.

#### Extend method Game#start

Change the method to print the winner in green and invalid moves in red.


#### Test it

Test your changes by playing the game, entering invalid moves and getting to a winning position.