require 'pry'
class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [@a, @b, @c].sort
  end

  def kind
    if @sides.all?{|s| s > 0} && (@sides[0] + @sides[1] > @sides[2])
      # binding.pry
      case @sides.uniq.size
      when 1
        :equilateral
      when 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  puts "You have flouted the laws of triangle equality!"
end
