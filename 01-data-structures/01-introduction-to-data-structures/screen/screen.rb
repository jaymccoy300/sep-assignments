require_relative 'pixel'

class Screen
  attr_accessor :width
  attr_accessor :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    @matrix = {}
  end

  # Insert a Pixel at x, y
  def insert(pixel, x, y)
    if inbounds(x, y)
      @matrix[x] ||= {}
      @matrix[x][y] = pixel
    end
  end

  def at(x, y)
    @matrix[x][y]
  end

  private

  def inbounds(x, y)
    is_valid = true
    if (x < 0 || x > width) || (y < 0 || y > height)
      is_valid = false
      return nil
    end
    return is_valid
  end
end
