require 'minitest/autorun'
require_relative 'grid'

class TestGrid < MiniTest::Test
  def test_set_cell
    # given
    grid = Grid.new

    # when
    grid.set_cell(5, 6, true)

    # then
    assert_equal true, grid.live?(5, 6)
  end

  def test_print_as_string
    # given
    grid = Grid.new
    grid.set_cell(1, 2, true)

    # when
    result = grid.print_as_string

    # then
    expected =
      "          \n" +
      "          \n" +
      " X        \n" +
      "          \n" * 7
    assert_equal(expected, result)
  end

  def test_neighbours
    # given
    # ----------
    # X
    # X
    #  X
    #
    #
    #
    #
    #
    #
    #
    # ----------
    grid = Grid.new
    grid.set_cell(0, 0, true)
    grid.set_cell(0, 1, true)
    grid.set_cell(1, 2, true)

    # when
    # then
    assert_equal 1, grid.neighbours(1, 2), 'somewhere in the middle'
    assert_equal 2, grid.neighbours(0, 1), 'it works at the left border'
    assert_equal 1, grid.neighbours(0, 0), 'it works in the upper left corner'
  end
end
