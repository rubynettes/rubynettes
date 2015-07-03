## Exercise: Currency Calculator

Write a program which takes a decimal value and two ISO 4217 currency codes and computes the value of the other currency given a fixed conversion rate. If one of the currency codes is not known the program should print an error. When run without any arguments the program should print some usage information including a list of all known currency codes for which it has conversion rates.

Add currency rates for at least 4 currencies.

```
$ ruby convert.rb 112.34 USD EUR
112.34 USD = 84.50 EUR (Conversion rate: 1 USD = 0.7522 EUR)
```

```
$ ruby convert.rb
Supported currencies:
EUR
USD
SEK
AUD
```

Structure the program such that you write a function `convert(amount, from, to)` that returns the converted currency amount, use that function to implement the program.


### Some Currency Conversion Rates

* 1 EUR = 1,0454 CHF   (Swiss Franks)
* 1 EUR = 6,8840 CNY   (Renminbi Yuan)
* 1 EUR = 1,1097 USD   (US Dollars)
* 1 EUR = 10,0981 ARS  (Argentinian Pesos)

### Currency Conversion Table on the Internet

If you want to add more rates, check this page:

https://www.umrechner-euro.de/wechselkurs-euro

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

