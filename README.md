# FizzBuzz


Program that prints the numbers from 1 to *n* with the following rules:
* For any number that is a multiple of 3, print 'Fizz'
* For any number that is a multiple of 5, print 'Buzz'
* For any number that is a multiple of both 3 and 5, print 'FizzBuzz'
* For all other numbers, print the number.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.


### Prerequisites

To be able to run the program, you need to have installed: [ruby-2.4.1](https://ruby-doc.org/core-2.4.1/)

To install it, you can review different options [here](https://www.ruby-lang.org/en/documentation/installation/)


### Installing & Running the Program

Clone the repo in your terminal: 

`$ git clone https://github.com/nmcolome/fizzbuzz.git`

Navigate into the project and run the file: 
```
$ cd fizzbuzz/lib
$ ruby fizzbuzz.rb
```

The program should prompt you for a number:

` Enter up to what number you want to print (number must be >1): > `

And the output should look like this (for an `n` = `20`):

`[1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]`

## Running tests

Navigate into the test file: `$ cd test`

Run the Minitest tests by: `$ ruby fizzbuzz_test.rb`


## Built With

* Language - [ruby-2.4.1](https://ruby-doc.org/core-2.4.1/)


## Authors

* **Turing School of Software & Design** - *BackEnd Prework* - [Turing School of Software & Design](https://github.com/turingschool-examples)

* **Natalia Colomé** - [nmcolome](https://github.com/nmcolome)