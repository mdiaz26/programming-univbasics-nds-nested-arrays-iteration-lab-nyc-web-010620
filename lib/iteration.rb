
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
def join_ingredients(src)
  new_array = []
  outer_count = 0
  while outer_count < src.length 
    new_array << "I love #{src[outer_count][0]} and #{src[outer_count][1]} on my pizza"
    outer_count += 1 
  end
new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  new_array = []
  counter = 0 
  while counter < src.length
    sorted_array = src[counter].sort
    new_array << sorted_array[-1]
    counter += 1
  end
new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0 
  outside_counter = 0 
  while outside_counter < src.length
    array_total = src[outside_counter].sum 
    if src[outside_counter][0].even? && src[outside_counter][1].even?
      total += array_total
    end
    outside_counter += 1
  end
total
end
