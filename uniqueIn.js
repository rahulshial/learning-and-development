/** Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

For example:

uniqueInOrder('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
uniqueInOrder('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
uniqueInOrder([1,2,2,3,3])       == [1,2,3] */

const uniqueInOrder = function (iterable) {
  //your code here - remember iterable can be a string or an array
  const result = [];
  const input = Array.isArray(iterable) ? iterable : iterable.split("");
  // method 1:
  // for (let i = 0; i < input.length; i++) {
  //   if (input[i] !== input[i + 1])
  //     result.push(input[i])
  // }
  
  // return result

  // method 2:
  // return input.filter((item, index) => item !== input[index + 1])

  // method 3:
  return [...iterable].filter((item, index) => item !== input[index + 1]);
};



console.log(uniqueInOrder("AAAABBBCCDAABBB")) // == ["A", "B", "C", "D", "A", "B"];
console.log(uniqueInOrder("ABBCcAD")) // == ["A", "B", "C", "c", "A", "D"];
console.log(uniqueInOrder([1, 2, 2, 3, 3])) // == [1, 2, 3];