/* COMMENTARY Every number from 0 - 9 have an associated function that does the following: Checks an arguement has been passed in and invokes it passing it's value as an arguement ie. arguements[0](1), arguements[0](2), etc. If no argument is passed, it should just return it's value 
  The operation functions always expect an arguement

  It returns the passed in function, which is a number and runs the operation on the arguement

COMMENTARY */

function zero() {
  return arguments.length === 1 ? arguments[0](0) : 0;
}
function one() {
  return arguments.length === 1 ? arguments[0](1) : 1;
}

function two() {
  return arguments.length === 1 ? arguments[0](2) : 2;
}

function three() {
  return arguments.length === 1 ? arguments[0](3) : 3;
}

function four() {
  return arguments.length === 1 ? arguments[0](4) : 4;
}

function five() {
  return arguments.length === 1 ? arguments[0](5) : 5;
}

function six() {
  return arguments.length === 1 ? arguments[0](6) : 6;
}

function seven() {
  return arguments.length === 1 ? arguments[0](7) : 7;
}

function eight() {
  return arguments.length === 1 ? arguments[0](8) : 8;
}

function nine() {
  return arguments.length === 1 ? arguments[0](9) : 9;
}

function times() {
  if (arguments.length === 0) throw "Error: expecting an argument";
  var multiplicative = arguments[0];
  return function (left) {
    return left * multiplicative;
  };
}

function plus() {
  if (arguments.length === 0) throw "Error: expecting an argument";
  var multiplicative = arguments[0];
  return function (left) {
    return left + multiplicative;
  };
}

function minus() {
  if (arguments.length === 0) throw "Error: expecting an argument";
  var multiplicative = arguments[0];
  return function (left) {
    return left - multiplicative;
  };
}

function dividedBy() {
  if (arguments.length === 0) throw "Error: expecting an argument";
  var multiplicative = arguments[0];
  return function (left) {
    return Math.floor(left / multiplicative);
  };
}

console.log(
  one() === 1,
  two() === 2,
  one(times(two())) === 2,
  one(plus(two())) === 3,
  one(minus(two())) === -1,
  one(dividedBy(two())) === 0.5
);
