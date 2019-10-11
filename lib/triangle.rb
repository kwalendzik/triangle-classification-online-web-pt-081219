class Triangle
  attr_accessor :side_one, :side_two, :side_three
 
 def initialize(:side_one, :side_two, :side_three)
   @side_one = side_one
   @side_two = side_two
   @side_three = side_three
 end
 
 def kind
   if side_one + side_two <= side_three || side_three + side_two <= side_one || side_one + side_three <= side_two || side_one <= 0 || side_two <= 0 || side_three <=0
      raise TriangleError
    elsif side_one == side_two && side_one == side_three
      return :equilateral
    elsif side_one == side_two || side_two == side_3_length || side_1_length == side_3_length
      return :isosceles
    elsif side_1_length != side_2_length && side_1_length != side_3_length && side_2_length != side_3_length
      return :scalene
    end
 end
 
 class TriangleError < StandardError
 end

end
