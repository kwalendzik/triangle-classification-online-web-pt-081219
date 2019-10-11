class Triangle
  attr_accessor :side_one, :side_two, :side_three
 
 def initialize(:side_one, :side_two, :side_three)
   @side_one = side_one
   @side_two = side_two
   @side_three = side_three
 end
 
 def kind(person)
   self.partner = person
   if person.class != Person
     begin
       raise PartnerError
     rescue PartnerError => error
         puts error.message
     end
   else
     person.partner = self
   end
 end
 
 class TriangleError < StandardError
 end

end
