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

  def test_it_generates_to_100
    assert_equal 100, @fizzbuzz.range.length
    assert_equal 15, @fizzbuzz.range[14]
    assert_equal 43, @fizzbuzz.range[42]
    assert_equal 95, @fizzbuzz.range[94]
  end
end