// TODO: implement 'mergesorted'
// test ensures: a and b are both arrays, consisting entirely of integers...
//...,both arrays are sorted and contain at least 1 integer.
// ALSO: the Array.sort function has been disabled for this excercise.

// My solution
// This takes two arrays that have already been sorted
function mergesorted(left, right) {
  let result = [], leftIndex = 0, rightIndex = 0
 
  while(leftIndex < left.length && rightIndex < right.length){
    if(left[leftIndex] < right[rightIndex]){
      result.push(left[leftIndex])
      leftIndex++
    }else{
      result.push(right[rightIndex])
      rightIndex++
    }
  }
  
  return result.concat(left.slice(leftIndex)).concat(right.slice(rightIndex))
}
