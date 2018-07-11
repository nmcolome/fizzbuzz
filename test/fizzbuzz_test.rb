require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/fizzbuzz.rb'

class FizzBuzzTest < Minitest::Test
  def setup
    @fizzbuzz = FizzBuzz.new(100)
    @fizz = @fizzbuzz.transform
  end

  def skip test_it_exists
    assert_instance_of FizzBuzz, @fizzbuzz
  end

  def skip test_it_prints_1_to_100
    assert_equal 100, @fizzbuzz.range.length
    assert_equal 15, @fizzbuzz.range[14]
    assert_equal 43, @fizzbuzz.range[42]
    assert_equal 95, @fizzbuzz.range[94]
  end

  def test_prints_fizz_for_multiples_of_3
    assert_equal "Fizz", @fizz[2]
    assert_equal "Fizz", @fizz[50]
    assert_equal "Fizz", @fizz[98]
  end

  def test_prints_buzz_for_multiples_of_5
    assert_equal "Buzz", @fizz[4]
    assert_equal "Buzz", @fizz[49]
    assert_equal "Buzz", @fizz[99]
  end

  def test_prints_fizzbuzz_for_multiples_of_3_and_5
    assert_equal "FizzBuzz", @fizz[14]
    assert_equal "FizzBuzz", @fizz[29]
    assert_equal "FizzBuzz", @fizz[89]
  end

  def test_it_prints_numbers_for_any_other_case
    first_15 = [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
    last_three = [98, "Fizz", "Buzz"]

    assert_equal 100, @fizz.length
    assert_equal 19, @fizz[18]
    assert_equal 52, @fizz[51]
    assert_equal 97, @fizz[96]
    assert_equal first_15, @fizz[0..14]
    assert_equal last_three, @fizz[-3..-1]
  end

  def test_it_creates_any_range
    twenty = FizzBuzz.new(20)
    five_hund = FizzBuzz.new(500)
    thousand = FizzBuzz.new(1000)
    twenty_fizzedbuzzed = twenty.transform
    five_hund_fizzedbuzzed = five_hund.transform
    thousand_fizzedbuzzed = thousand.transform
    twenty_answer = [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]
    five_hund_sample = ["Buzz", "Fizz", 442, 443, "Fizz", "Buzz", 446, "Fizz", 448, 449, "FizzBuzz"]
    thousand_sample = ["FizzBuzz", 706, 707, "Fizz", 709, "Buzz", "Fizz", 712, 713, "Fizz", "Buzz"]

    assert_equal 20, twenty.range.length
    assert_equal 500, five_hund.range.length
    assert_equal 1000, thousand.range.length
    assert_equal twenty_answer, twenty_fizzedbuzzed
    assert_equal five_hund_sample, five_hund_fizzedbuzzed[439..449]
    assert_equal thousand_sample, thousand_fizzedbuzzed[704..714]
  end
end