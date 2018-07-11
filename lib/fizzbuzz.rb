=begin
[x] Write a program that prints the numbers from 1 to 100 with the following rules:
[x] For any number that is a multiple of 3, print 'Fizz'
[x] For any number that is a multiple of 5, print 'Buzz'
[x] For any number that is a multiple of both 3 and 5, print 'FizzBuzz'
[x] For all other numbers, print the number.

[x] Bonus: write the program so that it will run for any range of numbers
=end

class FizzBuzz
  attr_reader :range

  def initialize(size)
    @range = (1..size).to_a
  end

  def transform
    transformed = []
    @range.each do |number|
      element = ""
      element += "Fizz" if number % 3 == 0
      element += "Buzz" if number % 5 == 0
      element = number if number % 3 != 0 && number % 5 != 0
      transformed << element
    end
    transformed
  end
end