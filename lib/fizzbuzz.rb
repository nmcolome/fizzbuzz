=begin
[x] Write a program that prints the numbers from 1 to 100 with the following rules:
[x] For any number that is a multiple of 3, print 'Fizz'
[] For any number that is a multiple of 5, print 'Buzz'
[] For any number that is a multiple of both 3 and 5, print 'FizzBuzz'
[] For all other numbers, print the number.
=end

class FizzBuzz
  attr_accessor :range

  def initialize
    @range = (1..100).to_a
  end

  def transform
    @range.map do |element|
      if element % 3 == 0
        element = "Fizz"
      elsif element % 5 == 0
        element = "Buzz"
      end
    end
  end
end