# Exercise: Tac Tac Toe - Step 5


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

