/** Find the missing letter
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

Example:

['a','b','c','d','f'] -> 'e'
['O','Q','R','S'] -> 'P'
(Use the English alphabet with 26 letters!)

 */

function findMissingLetter(array) {
  const startCharCode = array[0].charCodeAt(0);

  for (let i = 0; i < array.length; i++) {
    if (array[i].charCodeAt(0) !== startCharCode + i) {
      return String.fromCharCode(startCharCode + i);
    }
  }

  return ("No missing letter found");

}

console.log(findMissingLetter(["a", "b", "c", "d", "f"]))
console.log(findMissingLetter(["O", "Q", "R", "S"]))
console.log(findMissingLetter(["O", "P", "Q", "R", "S"]))