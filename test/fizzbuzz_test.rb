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
end