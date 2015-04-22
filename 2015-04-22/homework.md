

# Homework

## Tutorial with Exercises: Command line input

Do the tutorial with exercises about command line input in http://ruby-doc.org/docs/Tutorial/part_02/user_input.html


## Tutorial: Methods and Operators

Work through http://ruby-for-beginners.rubymonstas.org/13-bonus_1/07-arithmetical_operators.html


## Exercise: Guessing Game

Write a program that generates a random number between 0 and 100 (inclusive). The user must guess this number. Each correct guess (it if was a number) will receive the message 'Guess Higher!' or 'Guess Lower!'.

When the program is run, it should generate a random number between 0 and 100 inclusive.
You will display a command line prompt for the user to enter their guess number.
Quitting is not an option. The user can only end the game by guessing the target number.
Once you have received a value from the user, you should perform validation. If the user has given you an invalid value (anything other than a number between 1 and 100), display an appropriate error message. If the user has given you a valid value, display a message either telling them that there were correct or should guess higher or lower as described above.
This process should continue until they guess the correct number.

#### What you will need to know for this exercise:
  * The `loop` statement repeats a block many times, until you call `break`:
  ```Ruby
    loop do
      # some code here
      if <condition>
        break
      end
    end
  ```

  For example:

  ```Ruby
    val = 0
    loop do
       val += 1
       puts val
       break if val % 6 == 0
    end
  ```

  * `String#to_i` converts a string into an integer number, e.g. `"34".to_i` == `34`.




