/**
 * @param {number[]} nums
 * @param {Function} fn
 * @param {number} init
 * @return {number}
 */
var reduce = function (input, fn, init) {
  let accum = init;
  for (let i = 0; i < input.length; i++) {
    accum = fn(accum, input[i]);
  }
  return accum;
};



const input = [1, 2, 3, 4]
const fn= function sum(accum, curr) {
  return accum + curr;
}
const init = 0;
console.log(reduce(input, fn, init)); // Output: 10
console.log(reduce(input, fn, 10)); // Output: 20