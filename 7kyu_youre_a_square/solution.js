const isSquare = function (n) {
  if (n < 0) return false;
  return Math.sqrt(n) % 1 === 0;
};

console.log(isSquare(144) === true, isSquare(221) === false);
