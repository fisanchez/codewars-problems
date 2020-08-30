# order them set to variable
# Get value of index[1]

# get index value of index[1]

# My solution
def gimme(input_array)
  sorted_array = input_array.sort
  middle_val = sorted_array[1]
  input_array.index(middle_val) 
end

# Better solution
def gimmie(input_array)
  input_array.index(array.sort[1])
end
