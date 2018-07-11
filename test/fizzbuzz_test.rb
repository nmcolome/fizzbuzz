require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/fizzbuzz.rb'

class FizzBuzzTest < Minitest::Test
  def setup
    @fizzbuzz = FizzBuzz.new
  end

  def test_it_exists
    assert_instance_of FizzBuzz, @fizzbuzz
  end

  def test_it_prints_1_to_100
    assert_equal 100, @fizzbuzz.range.length
    # assert_equal 15, @fizzbuzz.range[14]
    assert_equal 43, @fizzbuzz.range[42]
    assert_equal 95, @fizzbuzz.range[94]
  end

  def test_prints_fizz_for_multiples_of_3
    fizz = @fizzbuzz.transform
    assert_equal "Fizz", fizz[2]
    assert_equal "Fizz", fizz[50]
    assert_equal "Fizz", fizz[98]
  end

  def test_prints_buzz_for_multiples_of_5
    fizz = @fizzbuzz.transform
    assert_equal "Buzz", fizz[4]
    assert_equal "Buzz", fizz[49]
    assert_equal "Buzz", fizz[99]
  end
end