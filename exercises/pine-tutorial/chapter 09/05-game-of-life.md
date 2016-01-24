# Exercise: Game of Life

Let's implement [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)!

## Group Exercise

Please do this exercise together with a partner, because you may want to reflect on your approach with somebody.

## Description

In Game of Life, we have a two dimensional grid with cells.
With each step in the game, we create a new grid with an equal amount of cells.

### A Grid made up of Cells

Game of Life is mapped onto a two dimensional (MxN) grid.
For example, it can take place on a grid of 10 by 10 cells.

On each grid position is a cell. Each cell is either dead or live.

![Example grid](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Game_of_life_loaf.svg/98px-Game_of_life_loaf.svg.png)

In the example above, you find a grid with 6x6 cells, of which the black ones are live - the others are dead.

A cell that is not at the border of the grid has 8 neighbour cells:
* left, right, upper, lower cells
* and the 4 diagonals

### Step by Step

For each step in the game, you create a new grid from the old one. Doing that, you need to apply these four rules:

1. Any live cell with fewer than two live neighbours will be dead in the next grid, as if caused by under-population.
2. Any live cell with two or three live neighbours lives in the next grid.
3. Any live cell with more than three live neighbours dies, as if by overcrowding.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


## Aim of the Exercise

We want to see an animation of the grid on the terminal, with cells moving around, having them appear and die.
It will be fun to see the change across the generations, and if you implemented it correctly, you will be able to enjoy figures like on the Wikipedia page about Conway's Game of Life.

## Initial thought before you start

We want to set up an initial grid of, say, 10x10, and add some live cells. Then we want to continuously clear the terminal, print the grid to the terminal and make a step.

### Part 1

Make a class called ```Grid```.

Add these methods:

* Method `initialize(width, height)`(both parameters are integers). This method should initialize an instance variable @cells with a two dimensional array of dimensions width and height of the value ```false```.

Since there are several ways to do this and it can be tricky, here is a way to create such an array with a width of 4 and a height of 2:

```
Array.new(4) { Array.new(2, false) }
```
which gives us in `irb`:

```
[[false, false], [false, false], [false, false], [false, false]]
```

So, for our initialize method we should use this to build our two dimensional array:

```
Array.new(width) { Array.new(height, false) }
```

* Method `set_cell(x, y, live)` (x, y are integers and live is a boolean) that sets wether the cell at (x, y) lives or is dead. To do this, it updates our @cells instance variable.
* Method `live?(x, y)` (x, y are integers), which returns if the cell at the given coordinates lives in the current grid. To do this, it checks our @cells instance variable.

* Method `print()` that prints the current grid to the console.

#### You may ask yourselves...

*How do you test these four methods (initialize, set_cell, live? and print)?*
Try and find a suitable solution for this. Your approach should be to test each method, and consult with your partner for this exercise. You shouldn't have to consult your coach, unless you feel you cannot possible solve this alone.


### Part 2

Add this method to `Grid`:
* Method `neighbours(x, y)` (x, y are integers) returns the number of living neighbours that the cell at the given coordinates has.

Here you will have to deal with cells sitting at the border of the grid. For example, The cell at (0, 1) sits at the left border of the grid and therefore you must be careful not to check if the cell at (-1, 1) lives because it doesn't exist!


#### You may ask yourselves...

But how do we test the `neighbours` method?
Single out the precise problem you have and figure out a solution. Maybe you want to take a sheet of paper and draw out what is supposed to happen on the command line. Ask you partner for this exercsize, and try imagining what each line does, and if there may be a line missing.


### Part 3

Make a new class `Game`. Add this method:

* Method `live_in_next_grid?(live, live_neighbours)` (live is a boolean, live_neighbours is an integer) that returns whether a cell should live or be dead in the next grid. As parameters, it takes the cell's current state (live - dead or alive) and the number of of living neighbours.

In this method you apply the four rules stated in the beginning (go and read "Step by Step" again, carefully).
The method returns a boolean (true or false) to indicate if the cell should live in the next grid.

#### Testing

Find a way to test this method. And then test it!


#### Part 4

Now we will tie all this together!

Add these methods to `Game`:

* Method `initialize` that create a new Grid with dimensions 80*60 and assigns it to an instance variable @grid. Then it sets some cells live on this grid. This will be our initial grid situation.

* Method `clear_screen()`that clears the screen.
Ruby code : `puts "\e[H\e[2J"`

* Method `step()` makes a new grid from the current one and assigns it to @grid. To do so, you instantiate a new `Grid` with the same width and height as the current one and assign it to a local variable.

    Then iterate over all coordinates `x` from 0 to width-1 and `y` from 0 to height-1 and

    * check if the cell at (x, y) lives (use the existing `Grid` method for this)
    * calculate the number of living neighbour cells of the cell at (x,y) (use the existing `Grid` method for this)
    * use these two results to calculate if the cell should live in the   new grid (use the existing `Grid` method for this). Store this as a boolean, true/false
    * assign this boolean to the cell at (x,y) in the new grid (use the existing `Grid` method for this).

After that you assign your new grid to @grid, thereby making it the current one.


* Method `start()` that does the following in an endless loop:
    * clear the screen
    * print the current grid to the console
    * wait 1 second (code: `sleep(1)`)
    * make a `step()` (makes a new grid from the current one and assigns it to @grid.)


#### Try it

Run the game with `Game#start`.



#### Part 5

Here setup our initial grid randomly instead of with hardcoded coordinates.
You can generate random coordinates using `rand(width)` and `rand(height)`. In the method `Game#initialize`, set 500 cells with random coordinates to 'live'.

#### Enjoy the Game of Life

Run the game with `Game#start` and enjoy.
Hope you like it!
