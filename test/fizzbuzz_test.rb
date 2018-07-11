require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/fizzbuzz.rb'

class FizzBuzzTest < Minitest::Test
  def test_it_exists
    fizzbuzz = FizzBuzz.new

    assert_instance_of FizzBuzz, fizzbuzz
  end
end