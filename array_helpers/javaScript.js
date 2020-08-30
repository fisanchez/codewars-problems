// TODO
Array.prototype.square = function(){
  return this.map(number => number ** 2)
}

Array.prototype.cube = function(){
  return this.map(number => number ** 3)
}

Array.prototype.average = function(){
  return  (this.reduce((number, sum) =>{
    return number + sum
  },0) ) / this.length
}

Array.prototype.sum= function(){
  return this.reduce((number, sum)=>{
    return number + sum
  }, 0)
}

Array.prototype.even= function(){
  return this.filter(number => {
    return number % 2 == 0
  })
}
Array.prototype.odd= function(){
  return this.filter(number => {
    return number % 2 > 0
  })
}
