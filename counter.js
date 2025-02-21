/**
 * @param {number} n
 * @return {Function} counter
 */
var createCounter = function (n) {
  let counter = n;
  return function () {
    return counter++;
  };
};

const counter = createCounter(10)
console.log(counter()) // 10
console.log(counter()) // 11
console.log(counter()) // 12
console.log(counter()) // 13
console.log(counter()) // 14
console.log(counter()) // 15
console.log(counter()) // 16
