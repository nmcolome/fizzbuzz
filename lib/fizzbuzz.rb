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

print "Enter up to what number you want to print (number must be >1): > "
max = gets.chomp.to_i
p FizzBuzz.new(max).transform