# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order

def array_equals(array_one, array_two)
  if array_one.length == array_two.length
    i = 0

    # solution 1 --> It exits the loop when the item evaluates to false
    # if first item is false it doesn't loop through the whole array.

    switch = 0
    while switch == 0 && i < array_one.length
      array_one[i] != array_two[i] ? switch = 1 : i += 1
    end
    return switch == 0 ? true : false

    # # solution 2 --> It loops through the whole array and then compares the number
    # of assertions to the length.

    # assertion = 0
    # (array_one.length).times do
    #   assertion += 1 if array_one[i] == array_two[i]
    #   i += 1
    # end
    # return assertion == array_one.length ? true : false

  else
    return false
  end
end

first_array_size = rand(1..2)
second_array_size = rand(1..2)

first_array = []
first_array_size.times do
  item = rand(1..2)
  first_array << item
end

second_array = []
second_array_size.times do
  item = rand(1..2)
  second_array << item
end

puts array_equals(first_array, second_array)
