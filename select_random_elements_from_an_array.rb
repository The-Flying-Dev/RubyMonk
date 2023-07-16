# Problem Statement

# Create a method 'random_select' which, when given an array of elements (array) and a number (n), 
# returns n randomly selected elements from that array. 



def random_select(array, n)
  new_arr = []  
  n.times do 
    new_arr << array[rand(array.length)]
  end
  new_arr
end
