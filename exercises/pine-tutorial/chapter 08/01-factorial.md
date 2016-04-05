## Exercise: Factorial

Write a program which takes a integer value (= a positive number without no fractions, such as 1 or 5) and outputs its factorial number.

The factorial of 5 is 1 * 2 * 3 * 4 * 5 = 120, and the factorial of n is 1 * 2 * 3... * n.

```
$ ruby factorial.rb 5
The factorial of 5 is 120
```

Structure the program such that you write a function `factorial(n)` that returns the factorial number of n, and use that function to implement the program.


### What You Need to Know: Command line arguments

Ruby keeps command line arguments in a string array called `ARGV`. See the program `command-line-arguments.rb` for an example. If you called it like this:

```
$ ruby command-line-arguments.rb Hello my friend
```

then it will output:

```
Your command line arguments were:
  0: Hello
  1: my
  2: friend
```

