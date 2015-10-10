require 'minitest/autorun'
require_relative 'fib'

class TestFib < MiniTest::Test

  def test_fib_0
    assert_equal(0, recursive_fib(0))
    assert_equal(0, iterative_fib(0))
  end

  def test_fib_1
    assert_equal(1, recursive_fib(1))
    assert_equal(1, iterative_fib(1))
  end

  def test_fib_10
    assert_equal(55, recursive_fib(10))
    assert_equal(55, iterative_fib(10))
  end

  def test_fib_15
    assert_equal(610, recursive_fib(15))
    assert_equal(610, iterative_fib(15))
  end

  def test_fib_35
    assert_equal(9227465, recursive_fib(35))
    assert_equal(9227465, iterative_fib(35))
  end

end
