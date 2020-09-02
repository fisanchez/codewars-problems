function twoDecimalPlaces(n) {
  return parseFloat(n.toFixed(2))
}

console.log( 
  twoDecimalPlaces(4.659725356) == 4.66,
)
