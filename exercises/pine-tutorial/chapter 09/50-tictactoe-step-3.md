# Exercise: Tac Tac Toe - Step 3


Here build upon our Tic Tac Toe game from the previous exercise. Have fun!


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


## And there's more...

Hold on, there is one little step left... please continue to the next tutorial!

