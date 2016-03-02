require 'minitest/autorun'
require_relative 'grid'

class TestGrid < MiniTest::Test
  def test_set_cell
    grid = Grid.new
    assert_equal false, grid.live?(5, 6)

    grid.set_cell(5, 6, true)
    assert_equal true, grid.live?(5, 6)
  end

  def test_print_as_string
    grid = Grid.new
    grid.set_cell(1, 2, true)

    expected =
      "          \n" +
      "          \n" +
      " X        \n" +
      "          \n" * 7
    assert_equal(expected, grid.print_as_string)
  end
end

