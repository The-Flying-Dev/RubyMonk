# Problem Statement

# Given an array, return true if all the elements are Fixnums. 


def array_of_fixnums?(array)
  array.all? { |element| element.is_a? Fixnum } 
end