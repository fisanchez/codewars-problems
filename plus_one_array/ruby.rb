# Join the array together as a string
# Convert to a number
# Add one 
# Convert each string to int and put back in an array
def up_array(arr)
  # Return nil if odd numbers exist
  return nil if arr.class != Array || arr.empty?
  return nil unless ( 
    arr.select do |num|
      num < 0 ||
      num.class != Integer ||
      num >= 10
    end
  ).empty?
  plus_one = arr.join("").to_i + 1 
  plus_one.to_s.chars
  plus_one.to_s.chars.inject([]) {|arr, char| arr << char.to_i}
end

# Best practices 
#
def up_array(arr)
  return nil if arr.empty? || arr.any? { |x| x < 0 || x > 9 }
  arr.join.next.chars.map(&:to_i)
end
