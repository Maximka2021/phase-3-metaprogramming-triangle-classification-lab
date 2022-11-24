require "pry"
class Triangle

  attr_accessor :l1, :l2, :l3

    def initialize l1, l2, l3
      @l1 = l1
      @l2 = l2
      @l3 = l3
    end

    def kind
        if [@l1, @l2, @l3] == [0] * 3 
            raise TriangleError   
        elsif @l1 < 0 || @l2 < 0 || @l3 < 0
            raise TriangleError
        elsif [@l1, @l2, @l3].max < ([@l1, @l2, @l3].sum) / 2
            raise TriangleError
        elsif [@l1, @l2, @l3] == [@l1] * 3 
          :equilateral
        elsif @l1 == @l2 || @l1 == @l3 || @l2 == @l3 
          :isosceles
        elsif @l1 != @l2 || @l1 != @l3 || @l2 != @l3 
          :scalene
      end
  end

  class TriangleError < StandardError

  end

end

# shape = Triangle.new(3,4,5)
# binding.pry



