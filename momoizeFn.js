/**
 * @param {Function} fn
 * @return {Function}
 */
function memoize(fn) {
  const cache = new Map();
  const memoizedFn = function (...args) {
    const key = JSON.stringify(args);
    if (!cache.has(key)) {
      cache.set(key, fn(...args));
    }
    return cache.get(key);
  };
  return memoizedFn;
}


let callCount = 0;
const memoizedFn = memoize(function (a, b) {
  callCount += 1;
  return a + b;
 })
memoizedFn(2, 3) // 5
memoizedFn(2, 3) // 5
memoizedFn(2, 4) // 5
memoizedFn(2, 3) // 5
console.log(callCount) // 1
