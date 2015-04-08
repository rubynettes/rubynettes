## Motivating Exercise: FizzBuzz

Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

Sample output:

```
1
2
Fizz
4
Buzz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz

... upto 100.
```

You will need the following tutorial section for this exercise!

## Tutorial

* Blocks http://ruby-for-beginners.rubymonstas.org/12-blocks.html
* Conditionals: http://ruby-for-beginners.rubymonstas.org/13-bonus_1/05-conditionals.html


## Exercise: Hamming Distance

Write a program that can calculate the Hamming difference between two DNA strands.

A mutation is simply a mistake that occurs during the creation or
copying of a nucleic acid, in particular DNA. Because nucleic acids are
vital to cellular functions, mutations tend to cause a ripple effect
throughout the cell. Although mutations are technically mistakes, a very
rare mutation may equip the cell with a beneficial attribute. In fact,
the macro effects of evolution are attributable by the accumulated
result of beneficial microscopic mutations over many generations.

The simplest and most common type of nucleic acid mutation is a point
mutation, which replaces one base with another at a single nucleotide.

By counting the number of differences between two homologous DNA strands
taken from different genomes with a common ancestor, we get a measure of
the minimum number of point mutations that could have occurred on the
evolutionary path between the two strands.

This is called the 'Hamming distance'.

It is found by comparing two DNA strands and counting how many of the
nucleotides are different from their equivalent in the other string.

```
GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^
```
The Hamming distance between these two DNA strands is 7.

### Implementation Notes
The Hamming distance is only defined for sequences of equal length. This means
that based on the definition, each language could deal with getting sequences
of equal length differently.


Description: http://exercism.io/exercises/ruby/hamming/readme


### Hint

* `String#chars` will give you an array of characters, e.g. `"Hello".chars` == `["H", "e", "l", "l", "o"]`



# Homework

## Exercise: Command line input

Do the exercises about command line input in http://ruby-doc.org/docs/Tutorial/part_02/user_input.html


## Tutorial: Methods and Operators

Work through http://ruby-for-beginners.rubymonstas.org/13-bonus_1/07-arithmetical_operators.html


## Exercise: Guessing Game

Write a program that generates a random number between 0 and 100 (inclusive). The user must guess this number. Each correct guess (it if was a number) will receive the message 'Guess Higher!' or 'Guess Lower!'.

When the program is run, it should generate a random number between 0 and 100 inclusive.
You will display a command line prompt for the user to enter their guess number.
Quitting is not an option. The user can only end the game by guessing the target number.
Once you have received a value from the user, you should perform validation. If the user has given you an invalid value (anything other than a number between 1 and 100), display an appropriate error message. If the user has given you a valid value, display a message either telling them that there were correct or should guess higher or lower as described above.
This process should continue until they guess the correct number.

What you will need to know for this exercise:
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




