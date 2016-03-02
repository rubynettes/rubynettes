require 'byebug'

class Grid
  WIDTH = 10
  HEIGHT = 10

  def initialize
    @cells = Array.new(WIDTH) { Array.new(HEIGHT, false) }
  end

  def set_cell(x, y, live)
    @cells[x][y] = live
  end

  def live?(x, y)
    @cells[x][y]
  end

  def print
    puts print_as_string
  end

  def print_as_string
    result = ''

    HEIGHT.times do |y|
      WIDTH.times do |x|
        if live?(x, y)
          result << 'X'
        else
          result << ' '
        end
      end
      result << "\n"
    end

    result
  end
end
