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

#### Hint

To combine two conditions, you can use `&&` like so:
```Ruby
  if x >= 10 && x <= 20
    puts "x is between 10 and 20"
  end
```


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

This is called the **Hamming distance**.

It is found by comparing two DNA strands and counting how many of the
nucleotides are different from their equivalent in the other string.

#### Examples

```
GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^
```
The Hamming distance between these two DNA strands is 7.

```
GAGCCTACTAACGGGAT
GAGCCTACTAACGGGAT

```
The Hamming distance between these two DNA strands is 0 (because they are identical).

#### Implementation Notes
The Hamming distance is only defined for sequences of equal length.


#### What you will need to know for this exercise

* `String#length` gives you the length of as string, e.g. `"Hello".length` == `5`
* `String#[]` returns the nth character of as string, e.g. 
  `"Hello"[0]` == `"H"`,
  `"Hello"[1]` == `"e"`,
  `"Hello"[2]` == `"l"`, 
  and so on.

(Description copied from http://exercism.io/exercises/ruby/hamming/readme)

