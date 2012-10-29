require_relative "binary_search"
require 'test/unit'
class TestBinarySearch < Test::Unit::TestCase
  def test_empty_cases
    assert_equal(nil, [].binary_search(nil))
    assert_equal(nil, [].binary_search(1))
  end

  def test_basic_cases
    assert_equal(0, [1].binary_search(1))
    assert_equal(nil, [1].binary_search(0))
  end

  def test_two_array_items
    assert_equal(0, [1, 2].binary_search(1))
    assert_equal(1, [1, 2].binary_search(2))
    assert_equal(nil, [1, 2].binary_search(0))
    assert_equal(nil, [1, 2].binary_search(3))
  end

  def test_three_array_items
    assert_equal(nil, [1, 2, 3].binary_search(0))
    assert_equal(0, [1, 2, 3].binary_search(1))
    assert_equal(1, [1, 2, 3].binary_search(2))
    assert_equal(2, [1, 2, 3].binary_search(3))
    assert_equal(nil, [1, 2, 3].binary_search(4))
  end

  def test_four_array_items
    assert_equal(nil, [1, 2, 3, 4].binary_search(0))
    assert_equal(0, [1, 2, 3, 4].binary_search(1))
    assert_equal(1, [1, 2, 3, 4].binary_search(2))
    assert_equal(2, [1, 2, 3, 4].binary_search(3))
    assert_equal(3, [1, 2, 3, 4].binary_search(4))
    assert_equal(nil, [1, 2, 3, 4].binary_search(5))
  end
end

