# Exercise: Word Frequency

In this exercise, we will implement a program that counts the frequency of words in a file. Consider a file `words.txt` with the following content:

---
This is a file with many words.
Some of the words appear more than once.
Some of the words only appear one time.
---

If we run our program:

```
ruby wordfreq.rb words.txt
```

then we wan to see this output:

```
this - 1
is - 1
a - 1
file - 1
with - 1
many - 1
words - 3
some - 2
of - 2
the - 2
only - 1
appear - 2
more - 1
than - 1
one - 1
once - 1
time - 1
```

## Step 1

Let's split this exercise into 3 steps.

In the first step, we use hardcoded string instead of a file.
So start with a local variable called `line` and assign it a string with some words. Then build your word count program based for that variable.

So let's say you assign your local variable like this:

```
   line = "Fruit is good and good is right"
```

and you run your program, you should see:
```
fruit - 1
is - 2
good - 2
and - 1
right - 1
```


## Step 2

In this step we read the string from a file with the hardcoded filename "words.txt", line by line.

For this, you need to know how to read the contents of a file.


### Reading the content of a file

You can read the content of a given file with filename "foo.txt" line by line using the following code example:

```
File.open('foo.txt').each do |line|
  puts "Current line: #{line}"
end
```


## Step 3

In the third and final step, we want to pass the filename as command line argument, so that we can run word frequency on any file, not just on "words.txt". This means that we should be able run

```
ruby wordfreq.rb anotherfile.txt
```

and get the word frequencies for "anotherfile.txt".


### Accessing command line arguments

Command line arguments are accesible as an array called `ARGV`. For example, if you have a program called `print_args.rb` with this content:

```
ARGV.each do |a|
  puts "Argument: #{a}"
end
```

then running it the following way will print its command line arguments:

```
$ ruby print_args.rb test1 test2 test3
Argument: test1
Argument: test2
Argument: test3
```

